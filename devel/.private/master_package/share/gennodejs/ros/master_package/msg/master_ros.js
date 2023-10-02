// Auto-generated. Do not edit!

// (in-package master_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class master_ros {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ros_movement = null;
      this.ros_servo_kamera = null;
      this.ros_speed_maju = null;
      this.ros_speed_mundur = null;
      this.ros_speed_kiri = null;
      this.ros_speed_kanan = null;
      this.servo_kamera = null;
      this.ros_servo_gripper = null;
    }
    else {
      if (initObj.hasOwnProperty('ros_movement')) {
        this.ros_movement = initObj.ros_movement
      }
      else {
        this.ros_movement = '';
      }
      if (initObj.hasOwnProperty('ros_servo_kamera')) {
        this.ros_servo_kamera = initObj.ros_servo_kamera
      }
      else {
        this.ros_servo_kamera = 0;
      }
      if (initObj.hasOwnProperty('ros_speed_maju')) {
        this.ros_speed_maju = initObj.ros_speed_maju
      }
      else {
        this.ros_speed_maju = 0;
      }
      if (initObj.hasOwnProperty('ros_speed_mundur')) {
        this.ros_speed_mundur = initObj.ros_speed_mundur
      }
      else {
        this.ros_speed_mundur = 0;
      }
      if (initObj.hasOwnProperty('ros_speed_kiri')) {
        this.ros_speed_kiri = initObj.ros_speed_kiri
      }
      else {
        this.ros_speed_kiri = 0;
      }
      if (initObj.hasOwnProperty('ros_speed_kanan')) {
        this.ros_speed_kanan = initObj.ros_speed_kanan
      }
      else {
        this.ros_speed_kanan = 0;
      }
      if (initObj.hasOwnProperty('servo_kamera')) {
        this.servo_kamera = initObj.servo_kamera
      }
      else {
        this.servo_kamera = 0;
      }
      if (initObj.hasOwnProperty('ros_servo_gripper')) {
        this.ros_servo_gripper = initObj.ros_servo_gripper
      }
      else {
        this.ros_servo_gripper = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type master_ros
    // Serialize message field [ros_movement]
    bufferOffset = _serializer.string(obj.ros_movement, buffer, bufferOffset);
    // Serialize message field [ros_servo_kamera]
    bufferOffset = _serializer.int16(obj.ros_servo_kamera, buffer, bufferOffset);
    // Serialize message field [ros_speed_maju]
    bufferOffset = _serializer.int64(obj.ros_speed_maju, buffer, bufferOffset);
    // Serialize message field [ros_speed_mundur]
    bufferOffset = _serializer.int64(obj.ros_speed_mundur, buffer, bufferOffset);
    // Serialize message field [ros_speed_kiri]
    bufferOffset = _serializer.int64(obj.ros_speed_kiri, buffer, bufferOffset);
    // Serialize message field [ros_speed_kanan]
    bufferOffset = _serializer.int64(obj.ros_speed_kanan, buffer, bufferOffset);
    // Serialize message field [servo_kamera]
    bufferOffset = _serializer.int64(obj.servo_kamera, buffer, bufferOffset);
    // Serialize message field [ros_servo_gripper]
    bufferOffset = _serializer.int64(obj.ros_servo_gripper, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type master_ros
    let len;
    let data = new master_ros(null);
    // Deserialize message field [ros_movement]
    data.ros_movement = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ros_servo_kamera]
    data.ros_servo_kamera = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [ros_speed_maju]
    data.ros_speed_maju = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ros_speed_mundur]
    data.ros_speed_mundur = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ros_speed_kiri]
    data.ros_speed_kiri = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ros_speed_kanan]
    data.ros_speed_kanan = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [servo_kamera]
    data.servo_kamera = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [ros_servo_gripper]
    data.ros_servo_gripper = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ros_movement);
    return length + 54;
  }

  static datatype() {
    // Returns string type for a message object
    return 'master_package/master_ros';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'da1819055561b8d77300168d2e0c6289';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string ros_movement
    int16 ros_servo_kamera
    int64 ros_speed_maju
    int64 ros_speed_mundur
    int64 ros_speed_kiri
    int64 ros_speed_kanan
    int64 servo_kamera
    int64 ros_servo_gripper
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new master_ros(null);
    if (msg.ros_movement !== undefined) {
      resolved.ros_movement = msg.ros_movement;
    }
    else {
      resolved.ros_movement = ''
    }

    if (msg.ros_servo_kamera !== undefined) {
      resolved.ros_servo_kamera = msg.ros_servo_kamera;
    }
    else {
      resolved.ros_servo_kamera = 0
    }

    if (msg.ros_speed_maju !== undefined) {
      resolved.ros_speed_maju = msg.ros_speed_maju;
    }
    else {
      resolved.ros_speed_maju = 0
    }

    if (msg.ros_speed_mundur !== undefined) {
      resolved.ros_speed_mundur = msg.ros_speed_mundur;
    }
    else {
      resolved.ros_speed_mundur = 0
    }

    if (msg.ros_speed_kiri !== undefined) {
      resolved.ros_speed_kiri = msg.ros_speed_kiri;
    }
    else {
      resolved.ros_speed_kiri = 0
    }

    if (msg.ros_speed_kanan !== undefined) {
      resolved.ros_speed_kanan = msg.ros_speed_kanan;
    }
    else {
      resolved.ros_speed_kanan = 0
    }

    if (msg.servo_kamera !== undefined) {
      resolved.servo_kamera = msg.servo_kamera;
    }
    else {
      resolved.servo_kamera = 0
    }

    if (msg.ros_servo_gripper !== undefined) {
      resolved.ros_servo_gripper = msg.ros_servo_gripper;
    }
    else {
      resolved.ros_servo_gripper = 0
    }

    return resolved;
    }
};

module.exports = master_ros;
