'use strict'
//declare universal variables here
var bacteria, phage, wallpaper;
var bact;
var phages;
var bactInf;
var speed;
var infected = false;
var active = true;

function preLoad() {
    wallpaper = loadImage("../images/bloodstream.jpg");
}

function setup() {
    createCanvas(windowWidth, windowHeight);

    speed = 0;

    phages = [];

    bact = new Bacteria(75, 75);

    phages.push(new Phage(random(-width, 2 * width), random(height, 2 * height), .015 + (3 * speed)));

    speed++;
}

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}

function draw() {
    // Calls the methods for bacteria and phages
    background(0);
    fill(200);
    circle(100, 100, 200);
    bact.show();

    for (var ph of phages) {
        ph.show();
        ph.target();
        ph.check();
    }
}

class Bacteria {
    constructor(x, y) {
        this.x = x;
        this.y = y;
        this.bacteria = loadImage("../images/bacteria.png");
    }

    show() {
        image(this.bacteria, this.x, this.y, 60, 60);
    }
}

class Phage {
    constructor(x, y, speed) {
        this.x = x;
        this.y = y;
        this.accel = speed;
        this.phage = loadImage("../images/phage.png");
        this.bactInf = loadImage("../images/bacteriaInf.png");
    }

    target() { //Goes to the bacteria and changes their color to indicate infection
        var tx1 = bact.x - this.x;
        this.x += tx1 * this.accel;

        var ty1 = bact.y - this.y;
        this.y += ty1 * this.accel;
    }

    retreat() {
        var tx2 = -bact.x - this.x - 100;
        this.x += tx2 * this.accel;

        var ty2 = -bact.y - this.y - 100;
        this.y += ty2 * this.accel;
    }

    multiply() {
        var random = 40;
        image(this.phage, bact.x - random, bact.y + random, 40, 40);
        image(this.phage, bact.x + random, bact.y - random, 40, 40);
        image(this.phage, bact.x - random, bact.y - random, 40, 40);
        image(this.phage, bact.x + random, bact.y + random, 40, 40);
    }

    check() {
        if (infected == false) {
            if (this.x <= bact.x + 5 && this.y <= bact.y + 5) {
                bact.bacteria = loadImage("../images/bacteriaInf.png");
                infected = true;
            }
        }
        if (infected == true) {
            this.retreat();
            this.multiply();
        }
    }

    show() {
        image(this.phage, this.x, this.y, 40, 40);
    }
}
