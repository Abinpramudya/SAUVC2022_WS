// Auto-generated. Do not edit!

// (in-package positioning_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class positioning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.posisi_x = null;
      this.posisi_z = null;
    }
    else {
      if (initObj.hasOwnProperty('posisi_x')) {
        this.posisi_x = initObj.posisi_x
      }
      else {
        this.posisi_x = 0.0;
      }
      if (initObj.hasOwnProperty('posisi_z')) {
        this.posisi_z = initObj.posisi_z
      }
      else {
        this.posisi_z = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type positioning
    // Serialize message field [posisi_x]
    bufferOffset = _serializer.float64(obj.posisi_x, buffer, bufferOffset);
    // Serialize message field [posisi_z]
    bufferOffset = _serializer.float64(obj.posisi_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type positioning
    let len;
    let data = new positioning(null);
    // Deserialize message field [posisi_x]
    data.posisi_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [posisi_z]
    data.posisi_z = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'positioning_package/positioning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f9577dd741c8df9c418dcd1145425041';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 posisi_x
    float64 posisi_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new positioning(null);
    if (msg.posisi_x !== undefined) {
      resolved.posisi_x = msg.posisi_x;
    }
    else {
      resolved.posisi_x = 0.0
    }

    if (msg.posisi_z !== undefined) {
      resolved.posisi_z = msg.posisi_z;
    }
    else {
      resolved.posisi_z = 0.0
    }

    return resolved;
    }
};

module.exports = positioning;
