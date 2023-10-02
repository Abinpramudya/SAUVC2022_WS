// Auto-generated. Do not edit!

// (in-package mission_package.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class misi {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.misi = null;
      this.submisi = null;
    }
    else {
      if (initObj.hasOwnProperty('misi')) {
        this.misi = initObj.misi
      }
      else {
        this.misi = 0;
      }
      if (initObj.hasOwnProperty('submisi')) {
        this.submisi = initObj.submisi
      }
      else {
        this.submisi = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type misi
    // Serialize message field [misi]
    bufferOffset = _serializer.int64(obj.misi, buffer, bufferOffset);
    // Serialize message field [submisi]
    bufferOffset = _serializer.int64(obj.submisi, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type misi
    let len;
    let data = new misi(null);
    // Deserialize message field [misi]
    data.misi = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [submisi]
    data.submisi = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mission_package/misi';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e8bcd0b04052275aff2eac8c31be06a0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 misi
    int64 submisi
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new misi(null);
    if (msg.misi !== undefined) {
      resolved.misi = msg.misi;
    }
    else {
      resolved.misi = 0
    }

    if (msg.submisi !== undefined) {
      resolved.submisi = msg.submisi;
    }
    else {
      resolved.submisi = 0
    }

    return resolved;
    }
};

module.exports = misi;
