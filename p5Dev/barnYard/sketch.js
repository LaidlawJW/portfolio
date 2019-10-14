'use strict';

var a = new Array();
var allFiles = new Array();
var one;
var two;
var three;
var four;

function preload() {
    one = loadSound("data/chicken.wav");
    two = loadSound("data/jay.wav");
    three = loadSound("data/rooster.wav");
    four = loadSound("data/turkey.wav");
    allFiles.push(one);
    allFiles.push(two);
    allFiles.push(three);
    allFiles.push(four);

}

function setup() {
    createCanvas(600, 600);
    for (var i = 0; i < 4; i++) {
        a[i] = new Animal(width / 2, height / 2, 10);
    }
}

function draw() {
    background(255);
    drawRects();
    for (var i = 0; i < a.length; i++) {
        a[i].move();
        a[i].show();
    }

}

function drawRects() {
    noFill();
    stroke(255, 0, 0);
    strokeWeight(4);
    triangle(250, 200, 0, 250, 500, 200);
    rect(0, 250, 500, 250);
    fill(139, 69, 19);
    rect(50, 300, 130, 150);

}

function mousePressed() {
    console.log("hello");
    console.log(a[0].x);
    var num = (Math.random() * 4);
    for (var i = 0; i < a.length; i++) {
        if (mouseX > a[i].getX() - a[i].getR() && mouseX < a[i].getX() + a[i].getR() && mouseY < a[i].getY() + a[i].getR() && mouseY > a[i].getY() - a[i].getR()) {
            allFiles[i].play();
            //cursor(HAND);
        } else {
            //cursor(CROSS);
        }
    }
}



class Animal {
    constructor(x, y, r) {
        this.x = x;
        this.y = y;
        this.r = r;
    }

    show() {
        fill(random(255));
        noStroke();
        ellipse(this.x, this.y, this.r * 2, this.r * 2);
    }

    move() {
        this.x += (Math.random() * 14) - 7;
        if (mouseY > this.y) {
            this.y += (Math.random() * 5);
        } else if (mouseY < this.y) {
            this.y -= (Math.random() * 5);
        }
    }

    getX() {
        return this.x;
    }

    getY() {
        return this.y;
    }

    getR() {
        return this.r;
    }
}
