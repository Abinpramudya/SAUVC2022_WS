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

class vision {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.jarak_objek = null;
    }
    else {
      if (initObj.hasOwnProperty('jarak_objek')) {
        this.jarak_objek = initObj.jarak_objek
      }
      else {
        this.jarak_objek = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type vision
    // Serialize message field [jarak_objek]
    bufferOffset = _serializer.int64(obj.jarak_objek, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type vision
    let len;
    let data = new vision(null);
    // Deserialize message field [jarak_objek]
    data.jarak_objek = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cv_package/vision';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5db1e3e1b216d22cf080e8124bd6b36';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 jarak_objek
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new vision(null);
    if (msg.jarak_objek !== undefined) {
      resolved.jarak_objek = msg.jarak_objek;
    }
    else {
      resolved.jarak_objek = 0
    }

    return resolved;
    }
};

module.exports = vision;
