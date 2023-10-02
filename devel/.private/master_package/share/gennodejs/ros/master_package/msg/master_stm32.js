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

class master_stm32 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stm32_movement = null;
      this.stm32_heading = null;
      this.stm32_depth = null;
    }
    else {
      if (initObj.hasOwnProperty('stm32_movement')) {
        this.stm32_movement = initObj.stm32_movement
      }
      else {
        this.stm32_movement = '';
      }
      if (initObj.hasOwnProperty('stm32_heading')) {
        this.stm32_heading = initObj.stm32_heading
      }
      else {
        this.stm32_heading = 0;
      }
      if (initObj.hasOwnProperty('stm32_depth')) {
        this.stm32_depth = initObj.stm32_depth
      }
      else {
        this.stm32_depth = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type master_stm32
    // Serialize message field [stm32_movement]
    bufferOffset = _serializer.string(obj.stm32_movement, buffer, bufferOffset);
    // Serialize message field [stm32_heading]
    bufferOffset = _serializer.int64(obj.stm32_heading, buffer, bufferOffset);
    // Serialize message field [stm32_depth]
    bufferOffset = _serializer.int64(obj.stm32_depth, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type master_stm32
    let len;
    let data = new master_stm32(null);
    // Deserialize message field [stm32_movement]
    data.stm32_movement = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [stm32_heading]
    data.stm32_heading = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [stm32_depth]
    data.stm32_depth = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.stm32_movement);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'master_package/master_stm32';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ee71efa32a1481ff27ebaa2bab653120';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string stm32_movement
    int64 stm32_heading
    int64 stm32_depth
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new master_stm32(null);
    if (msg.stm32_movement !== undefined) {
      resolved.stm32_movement = msg.stm32_movement;
    }
    else {
      resolved.stm32_movement = ''
    }

    if (msg.stm32_heading !== undefined) {
      resolved.stm32_heading = msg.stm32_heading;
    }
    else {
      resolved.stm32_heading = 0
    }

    if (msg.stm32_depth !== undefined) {
      resolved.stm32_depth = msg.stm32_depth;
    }
    else {
      resolved.stm32_depth = 0
    }

    return resolved;
    }
};

module.exports = master_stm32;
