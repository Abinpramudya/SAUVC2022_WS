#!/usr/bin/env python3

import argparse
import os
from pickle import TRUE
import sys
from pathlib import Path
import rospy

import torch
import torch.backends.cudnn as cudnn

FILE = Path(__file__).resolve()
ROOT = FILE.parents[0]  # YOLOv5 root directory
if str(ROOT) not in sys.path:
    sys.path.append(str(ROOT))  # add ROOT to PATH
ROOT = Path(os.path.relpath(ROOT, Path.cwd()))  # relative

from models.common import DetectMultiBackend
from utils.dataloaders import IMG_FORMATS, VID_FORMATS, LoadImages, LoadStreams
from utils.general import (LOGGER, check_file, check_img_size, check_imshow, check_requirements, colorstr, cv2,
                           increment_path, non_max_suppression, print_args, scale_coords, strip_optimizer, xyxy2xywh)
from utils.plots import Annotator, colors, save_one_box
from utils.torch_utils import select_device, time_sync
from cv_package.msg import kamera

# Grid Variables
GRID_COLOR = (255,255,255) #White (BGR Values)
GRID_THICKNESS = 1 

# Dot Variables
DOT_RADIUS = 2
DOT_COLOR = (0,255,0) #Red (BGR Values)
DOT_THICKNESS = 4

@torch.no_grad()
def run(
        # Change This Path 
        weights=ROOT / '../SAUVC_Model_16September.onnx',
        # Camera index
        source='0',  
        # YAML Config
        data=ROOT / 'data/SAUVC_13September.yaml',
        # Inference size     (height, width) default value is 640x640
        imgsz=(640, 640), 
        # Confidence threshold (default value is 0.25) 0.4
        conf_thres=0.6,
        # IOU Threshold (default value is 0.45) 0.55
        iou_thres=0.6,

        max_det=1000,  # maximum detections per image
        device='',  # cuda device, i.e. 0 or 0,1,2,3 or cpu
        view_img=False,  # show results
        save_txt=False,  # save results to *.txt
        save_conf=False,  # save confidences in --save-txt labels
        save_crop=False,  # save cropped prediction boxes
        nosave=False,  # do not save images/videos
        classes=None,  # filter by class: --class 0, or --class 0 2 3
        agnostic_nms=False,  # class-agnostic NMS
        augment=False,  # augmented inference
        visualize=False,  # visualize features
        update=False,  # update all models
        project=ROOT / 'runs/detect',  # save results to project/name
        name='exp',  # save results to project/name
        exist_ok=False,  # existing project/name ok, do not increment
        line_thickness=3,  # bounding box thickness (pixels)
        hide_labels=False,  # hide labels
        hide_conf=False,  # hide confidences
        half=False,  # use FP16 half-precision inference
        dnn=False,  # use OpenCV DNN for ONNX inference
):
    source = str(source)
    save_img = not nosave and not source.endswith('.txt')  # save inference images
    is_file = Path(source).suffix[1:] in (IMG_FORMATS + VID_FORMATS)
    is_url = source.lower().startswith(('rtsp://', 'rtmp://', 'http://', 'https://'))
    webcam = source.isnumeric() or source.endswith('.txt') or (is_url and not is_file)
    if is_url and is_file:
        source = check_file(source)  # download

    # Directories
    save_dir = increment_path(Path(project) / name, exist_ok=exist_ok)  # increment run
    (save_dir / 'labels' if save_txt else save_dir).mkdir(parents=True, exist_ok=True)  # make dir

    # Load model
    device = select_device(device)
    model = DetectMultiBackend(weights, device=device, dnn=dnn, data=data, fp16=half)
    stride, names, pt = model.stride, model.names, model.pt
    imgsz = check_img_size(imgsz, s=stride)  # check image size

    # Dataloader
    if webcam:
        view_img = check_imshow()
        cudnn.benchmark = True  # set True to speed up constant image size inference
        dataset = LoadStreams(source, img_size=imgsz, stride=stride, auto=pt)
        bs = len(dataset)  # batch_size
    else:
        dataset = LoadImages(source, img_size=imgsz, stride=stride, auto=pt)
        bs = 1  # batch_size
    vid_path, vid_writer = [None] * bs, [None] * bs

    # Run inference
    model.warmup(imgsz=(1 if pt else bs, 3, *imgsz))  # warmup
    seen, windows, dt = 0, [], [0.0, 0.0, 0.0]
    for path, im, im0s, vid_cap, s in dataset:
        t1 = time_sync()
        im = torch.from_numpy(im).to(device)
        im = im.half() if model.fp16 else im.float()  # uint8 to fp16/32
        im /= 255  # 0 - 255 to 0.0 - 1.0
        if len(im.shape) == 3:
            im = im[None]  # expand for batch dim
        t2 = time_sync()
        dt[0] += t2 - t1

        # Inference
        visualize = increment_path(save_dir / Path(path).stem, mkdir=True) if visualize else False
        pred = model(im, augment=augment, visualize=visualize)
        t3 = time_sync()
        dt[1] += t3 - t2

        # NMS
        pred = non_max_suppression(pred, conf_thres, iou_thres, classes, agnostic_nms, max_det=max_det)
        dt[2] += time_sync() - t3

        #initialize publisher
        pred_pub = rospy.Publisher('kamera_pub',kamera,queue_size=1)

        # Process predictions
        for i, det in enumerate(pred):  # per image
            bounding_boxes = kamera()
            seen += 1
            if webcam:  # batch_size >= 1
                p, im0, frame = path[i], im0s[i].copy(), dataset.count
                s += f'{i}: '
            else:
                p, im0, frame = path, im0s.copy(), getattr(dataset, 'frame', 0)

            p = Path(p)  # to Path
            save_path = str(save_dir / p.name)  # im.jpg
            txt_path = str(save_dir / 'labels' / p.stem) + ('' if dataset.mode == 'image' else f'_{frame}')  # im.txt
            s += '%gx%g ' % im.shape[2:]  # print string
            gn = torch.tensor(im0.shape)[[1, 0, 1, 0]]  # normalization gain whwh
            imc = im0.copy() if save_crop else im0  # for save_crop
            annotator = Annotator(im0, line_width=line_thickness, example=str(names))
            
            # Stream results
            Webcam_Frame = annotator.result()

            # If model can detect obstacle
            if len(det):
                # Rescale boxes from img_size to im0 size
                det[:, :4] = scale_coords(im.shape[2:], det[:, :4], im0.shape).round()

                # Print results
                for c in det[:, -1].unique():
                    n = (det[:, -1] == c).sum()  # detections per class
                    s += f"{n} {names[int(c)]}{'s' * (n > 1)}, "  # add to string

                # Write results
                for *xyxy, conf, cls in reversed(det):
                    bounding_box = kamera()
                    c = int(cls)
                    # Fill in bounding box message
                    rate = rospy.Rate(200)
                    
                    bounding_box.object_label = names[c]
                    bounding_box.probability = float("{:.2f}".format(conf)) #limitting 2 number after comma
                    bounding_box.xmin_cv = int(xyxy[0])
                    bounding_box.ymin_cv = int(xyxy[1])
                    bounding_box.xmax_cv = int(xyxy[2])
                    bounding_box.ymax_cv= int(xyxy[3])
                    bounding_box.width = bounding_box.xmax_cv - bounding_box.xmin_cv
                    bounding_box.height = bounding_box.ymax_cv - bounding_box.ymin_cv
                    bounding_box.xcenter_cv = ((bounding_box.xmin_cv + bounding_box.xmax_cv) /2)
                    bounding_box.ycenter_cv = ((bounding_box.ymin_cv + bounding_box.ymax_cv) /2)
                    DOT_CENTER = (int(bounding_box.xcenter_cv),int(bounding_box.ycenter_cv))
                    
                    # Create a red dot at center of bounding box
                    Webcam_Frame = cv2.circle(Webcam_Frame,DOT_CENTER,DOT_RADIUS,DOT_COLOR,DOT_THICKNESS)

                    #bounding_boxes.bounding_boxes.append(bounding_box)

                    pred_pub.publish(bounding_box)
                    rate.sleep()
                    # Annotate the image
                    label = f"{names[c]} {conf:.2f}"
                    annotator.box_label(xyxy, label, color=colors(c, True)) 

            else: # didnt detect object
                rate = rospy.Rate(200)

                bounding_box = kamera()
                bounding_box.object_label = "Null"

                pred_pub.publish(bounding_box)
                rate.sleep()

            # Publish Prediction
        
            # Enable 3 x 3 Grid
            first_vertical_line = cv2.line(Webcam_Frame,(213,0),(213,480),GRID_COLOR,GRID_THICKNESS)
            second_vertical_line = cv2.line(Webcam_Frame,(426,0),(426,480),GRID_COLOR,GRID_THICKNESS)

            first_horizontal_line = cv2.line(Webcam_Frame,(0,160),(640,160),GRID_COLOR,GRID_THICKNESS)
            second_horizontal_line = cv2.line(Webcam_Frame,(0,320),(640,320),GRID_COLOR,GRID_THICKNESS)
            
            # Enable Preview
            cv2.imshow('Webcam_Frame', Webcam_Frame)

        # Press 'q' to quit 
        if cv2.waitKey(1) == ord('q'):
            break

        # Print FPS
        print(f'{s} Done.({1/(t3 - t2):.3f}FPS)')

        # Print Latency 
        t = tuple(x / seen * 1E3 for x in dt)
        print(f'Speed: %.1fms pre-process, %.1fms inference (latency), %.1fms NMS per image ' % t)


def main():
    run()

if __name__ == "__main__":
    rospy.init_node("cv_node") 
    main() 
