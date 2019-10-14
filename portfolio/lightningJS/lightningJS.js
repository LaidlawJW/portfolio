'use strict';

var startTime = 0;

var startX = 0;
var startY = 250;
var endX = 0;
var endY = 250;

var rand1 = 0;
var rand2 = 0;
var rand3 = 0;

var strikeInterval = 1400;
var lastStrike = 0;
var nextStrike = 0;

var storm = true;
var lightFade = true;


function setup() {
  smooth();
  createCanvas(900, 500);
  background(155);
  strokeWeight(2);
  //lightning color 
  rand1 = (int)(Math.random() * 255) + 1;
  rand2 = (int)(Math.random() * 255) + 1;
  rand3 = (int)(Math.random() * 255) + 1;
  stroke(rand1, rand2, rand3);
}

function draw() {
  background(155);

  if (storm && millis() - lastStrike > nextStrike) { //Checks if a new bolt needs to fire
    lastStrike = millis();
    nextStrike = random(0, strikeInterval);
    while (endX < 900) { //Creates the zig-zag pattern
      endX = startX + (int)(Math.random() * 10);
      endY = startY(int)(Math.random() * 19) - 9;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
      console.log("startX " + startX);
      console.log("startY " + startY);
    }

    var time = millis() - startTime;
    if (time > 15) {
      startTime = millis();
      reset();
    }
  }

  if (lightFade) {
    noStroke();
    fill(0, 0, 10, 20);
    rect(0, 0, width, height);
    noFill();
  }
}

function reset() {
  startX = 0;
  startY = 250;
  endX = 0;
  endY = 250;
}
