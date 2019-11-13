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
    wallpaper = loadImage("../images/bloodstream.png");
    bacteria = loadImage("../images/bacteria.png");
    bactInf = loadImage("../images/bacteriaInf.png");
    phage = loadImage("../images/phage.png");
}

function setup() {
    createCanvas(1000, 563);

    speed = 0;

    phages = [];

    bact = new Bacteria(width / 2, height / 2);

    phages.push(new Phage(random(-width, 2 * width), random(height, 2 * height), .015 + (3 * speed)));

    speed++;
}

function draw() {
    // Calls the methods for bacteria and phages
    background(wallpaper);
    noStroke();

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
    }

    show() {
        image(bacteria, this.x, this.y, 60, 60);
    }
}

class Phage {
    constructor(x, y, speed) {
        this.x = x;
        this.y = y;
        this.accel = speed;
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
        image(phage, bact.x - random, bact.y + random, 40, 40);
        image(phage, bact.x + random, bact.y - random, 40, 40);
        image(phage, bact.x - random, bact.y - random, 40, 40);
        image(phage, bact.x + random, bact.y + random, 40, 40);
    }

    check() {
        if (infected == false) {
            if (x <= bact.x + 5 && y <= bact.y + 5) {
                bacteria = loadImage("../images/bacteriaInf.png");
                infected = true;
            }
        }
        if (infected == true) {
            retreat();
            multiply();
        }
    }

    show() {
        image(phage, this.x, this.y, 40, 40);
    }
}
