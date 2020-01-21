'use strict'

snowFlake[] sf1 = new snowFlake[300];
var grow;
var tex;
var santa;
var lights = false;
var moonCount = 0;

function preLoad() {
    santa = loadImage("../images/santa.png");
}

function setup() {
    santa = loadImage("santa.png");
    createCanvas(1000, 500);
    for (var i = 0; i < sf1.length; i++) {
        sf1[i] = new snowFlake();
    }
}

function draw() {
    background(#67E8E7);
  
  if (mousePressed) {
    background(0, 0, 70);// Night mode
  }
  
  for (int i= 0; i < sf1.length; i++) {
        sf1[i].move();
        sf1[i].show();
    }
    objects();
    grow();
    drawHH();
    lights();
}

function grow() {
    fill(255, 255, 255);
    rect(0, this.height - 95, this.width, this.grow); // Over the whole scene
    if (this.grow < -90) {
        this.grow = -90;
    } else {
        this.grow -= .01;
    }

    if (this.grow < -50) {
        this.grow = -50;
    } else {
        this.grow -= .01;
    }

    if (this.grow < -50) {
        this.grow = -50;
    } else {
        this.grow -= .01;
    }
}

function objects() {
    //ground
    noStroke();
    fill(255, 255, 255);
    rect(0, height - 100, width, 100);
    fill(#3E3939);
  rect(0, height-75, width, 45);        

  //sun
  fill(# DFE312);
    ellipse(100, 100, 50, 50);

    //lightpost
    fill(#3A3E46);
  rect(450, 215, 15, 190);

  fill(255, 255, 255);
  triangle(0, 400, 0, 250, 350, 400);

  //tree1
  fill(# 096 C18);
    triangle(40, 300, 70, 200, 100, 300);
    fill(#096C18);
  triangle(50, 250, 70, 200, 90, 250);
  fill(# 582209);
    rect(60, 300, 20, 30);
}

function lights() {
    if (mousePressed) {
        moon();
        fill(#EFF033);
        rect(445, 215, 25, 20);
        fill(#3A3E46);
    rect(445, 215, 25, 10);
    fill(# EFF033);
        textSize(50); //star
        text("*", 58, 223);
    } else {
        fill(58, 62, 70); // Light color
        rect(445, 215, 25, 20); // Box
    }
}

function drawHH() {
    textSize(30);
    fill(#FCF0EB);
    text("Happy Holidays!", this.tex + 1000, 455);
    fill(0);
    this.santa.resize(175, 110);
    image(this.santa, this.tex + 800, 355);
    if (this.tex > 0) {
        this.tex = 1000;
    } else {
        this.tex -= .1;
    }
}

function moon() { // Not yet finished
    if (moonCount == 0) { // Full moon
        fill(255);
        ellipse(100, 100, 50, 50); //Default moon
    }

    if (moonCount == 1) { // Waning crescent moon
        fill(255);
        ellipse(100, 100, 50, 50);
        fill(0, 0, 70);
        ellipse(120, 100, 50, 50); //Moon cover up
    }

    if (moonCount == 2) { // Half moon
        fill(255);
        ellipse(100, 100, 50, 50);
        fill(0, 0, 70);
        rect(125, 100, 50, 50); //Moon cover up
    }

    if (moonCount == 3) { // Waxing crescent moon
        fill(255);
        ellipse(100, 100, 50, 50);
        fill(0, 0, 70);
        ellipse(80, 100, 50, 50); //Moon cover up
    }

    if (moonCount == 4) { // New moon
        fill(0, 0, 70); //New moons aren't visible
        ellipse(100, 100, 50, 50);
    }

    if (moonCount == 5) { // New moon
        moonCount = 0;
    }
}

//-----------------------------------------------------

class snowFlake {
    var x;
    var y;
    var xspeed;
    var yspeed;
    var size;

    public snowFlake() {
        this.x = (int)(Math.random() * 1001);
        this.y = (int)(Math.random() * 401) - 210;
        this.xspeed = (int)(Math.random() * 3) - 1;
        this.yspeed = (int)(Math.random() * 3) + 2;
        this.size = (int)(Math.random() * 10) + 1;
    }
    void show() {
        fill(255, 255, 255);
        ellipse(this.x, this.y, this.size, this.size);
    }

    void move() {
        this.x += xspeed;
        this.y += yspeed;
        if (this.y > 500) {
            this.y = -20;
        }
    }
}
