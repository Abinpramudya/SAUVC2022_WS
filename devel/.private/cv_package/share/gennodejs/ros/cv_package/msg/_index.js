
"use strict";

let kamera = require('./kamera.js');
let vision = require('./vision.js');
let BoundingBoxes = require('./BoundingBoxes.js');
let BoundingBox = require('./BoundingBox.js');

module.exports = {
  kamera: kamera,
  vision: vision,
  BoundingBoxes: BoundingBoxes,
  BoundingBox: BoundingBox,
};
