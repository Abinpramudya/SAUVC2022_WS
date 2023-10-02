// Auto-generated. Do not edit!

// (in-package cv_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class BoundingBox {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_label = null;
      this.probability = null;
      this.xmin_cv = null;
      this.ymin_cv = null;
      this.xmax_cv = null;
      this.ymax_cv = null;
      this.xcenter_cv = null;
      this.ycenter_cv = null;
      this.width = null;
      this.height = null;
    }
    else {
      if (initObj.hasOwnProperty('object_label')) {
        this.object_label = initObj.object_label
      }
      else {
        this.object_label = '';
      }
      if (initObj.hasOwnProperty('probability')) {
        this.probability = initObj.probability
      }
      else {
        this.probability = 0.0;
      }
      if (initObj.hasOwnProperty('xmin_cv')) {
        this.xmin_cv = initObj.xmin_cv
      }
      else {
        this.xmin_cv = 0;
      }
      if (initObj.hasOwnProperty('ymin_cv')) {
        this.ymin_cv = initObj.ymin_cv
      }
      else {
        this.ymin_cv = 0;
      }
      if (initObj.hasOwnProperty('xmax_cv')) {
        this.xmax_cv = initObj.xmax_cv
      }
      else {
        this.xmax_cv = 0;
      }
      if (initObj.hasOwnProperty('ymax_cv')) {
        this.ymax_cv = initObj.ymax_cv
      }
      else {
        this.ymax_cv = 0;
      }
      if (initObj.hasOwnProperty('xcenter_cv')) {
        this.xcenter_cv = initObj.xcenter_cv
      }
      else {
        this.xcenter_cv = 0.0;
      }
      if (initObj.hasOwnProperty('ycenter_cv')) {
        this.ycenter_cv = initObj.ycenter_cv
      }
      else {
        this.ycenter_cv = 0.0;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0;
      }
      if (initObj.hasOwnProperty('height')) {
        this.height = initObj.height
      }
      else {
        this.height = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BoundingBox
    // Serialize message field [object_label]
    bufferOffset = _serializer.string(obj.object_label, buffer, bufferOffset);
    // Serialize message field [probability]
    bufferOffset = _serializer.float64(obj.probability, buffer, bufferOffset);
    // Serialize message field [xmin_cv]
    bufferOffset = _serializer.int64(obj.xmin_cv, buffer, bufferOffset);
    // Serialize message field [ymin_cv]
    bufferOffset = _serializer.int64(obj.ymin_cv, buffer, bufferOffset);
    // Serialize message field [xmax_cv]
    bufferOffset = _serializer.int64(obj.xmax_cv, buffer, bufferOffset);
    // Serialize message field [ymax_cv]
    bufferOffset = _serializer.int64(obj.ymax_cv, buffer, bufferOffset);
    // Serialize message field [xcenter_cv]
    bufferOffset = _serializer.float64(obj.xcenter_cv, buffer, bufferOffset);
    // Serialize message field [ycenter_cv]
    bufferOffset = _serializer.float64(obj.ycenter_cv, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.int64(obj.width, buffer, bufferOffset);
    // Serialize message field [height]
    bufferOffset = _serializer.int64(obj.height, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BoundingBox
    let len;
    let data = new BoundingBox(null);
    // Deserialize message field [object_label]
    data.object_label = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [probability]
    data.probability = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [xmin_cv]
    data.xmin_cv = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ymin_cv]
    data.ymin_cv = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [xmax_cv]
    data.xmax_cv = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ymax_cv]
    data.ymax_cv = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [xcenter_cv]
    data.xcenter_cv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ycenter_cv]
    data.ycenter_cv = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [height]
    data.height = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.object_label);
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cv_package/BoundingBox';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16489477eaaf0dbca582174d9a0d8936';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_label
    float64 probability
    int64 xmin_cv
    int64 ymin_cv
    int64 xmax_cv
    int64 ymax_cv
    float64 xcenter_cv
    float64 ycenter_cv
    int64 width
    int64 height
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BoundingBox(null);
    if (msg.object_label !== undefined) {
      resolved.object_label = msg.object_label;
    }
    else {
      resolved.object_label = ''
    }

    if (msg.probability !== undefined) {
      resolved.probability = msg.probability;
    }
    else {
      resolved.probability = 0.0
    }

    if (msg.xmin_cv !== undefined) {
      resolved.xmin_cv = msg.xmin_cv;
    }
    else {
      resolved.xmin_cv = 0
    }

    if (msg.ymin_cv !== undefined) {
      resolved.ymin_cv = msg.ymin_cv;
    }
    else {
      resolved.ymin_cv = 0
    }

    if (msg.xmax_cv !== undefined) {
      resolved.xmax_cv = msg.xmax_cv;
    }
    else {
      resolved.xmax_cv = 0
    }

    if (msg.ymax_cv !== undefined) {
      resolved.ymax_cv = msg.ymax_cv;
    }
    else {
      resolved.ymax_cv = 0
    }

    if (msg.xcenter_cv !== undefined) {
      resolved.xcenter_cv = msg.xcenter_cv;
    }
    else {
      resolved.xcenter_cv = 0.0
    }

    if (msg.ycenter_cv !== undefined) {
      resolved.ycenter_cv = msg.ycenter_cv;
    }
    else {
      resolved.ycenter_cv = 0.0
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0
    }

    if (msg.height !== undefined) {
      resolved.height = msg.height;
    }
    else {
      resolved.height = 0
    }

    return resolved;
    }
};

module.exports = BoundingBox;
