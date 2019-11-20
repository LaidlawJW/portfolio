var quantity = 1500;

var posX = new Array(quantity);
var posY = new Array(quantity);
var speedX = new Array(quantity).fill(0);
var speedY = new Array(quantity).fill(0);

var r, g, b;

var nP, obP, jmP; //Array increments for each particle type

function setup() {
    createCanvas(windowWidth, windowHeight);
    stroke(64, 255, 255, 100);
    strokeWeight(13);
    fill(202, 255, 255, 50);
    frameRate(60);

    for (var i = 1; i < quantity; i++) { //Initally random positions
        posX[i] = random(0, width);
        posY[i] = random(0, height);
    }

    posX[0] = 0;
    posY[0] = 0;
}

function draw() { //Adjusts speed and location of particles based on relative distances
    background(0, 128);

    speedX[0] = speedX[0] * .5 + (mouseX - posX[0]) * 1.91;
    speedY[0] = speedY[0] * .5 + (mouseY - posY[0]) * 1.91;

    posX[0] += speedX[0];
    posY[0] += speedY[0];

    for (var i = 1; i < quantity; i++) {
        var change = 1024 / (sq(posX[0] - posX[i]) + sq(posY[0] - posY[i]));

        speedX[i] = speedX[i] * 0.95 + (speedX[0] - speedX[i]) * change;
        speedY[i] = speedY[i] * 0.95 + (speedY[0] - speedY[i]) * change;

        posX[i] += speedX[i];
        posY[i] += speedY[i];

        if ((posX[i] < 0 && speedX[i] < 0) || (posX[i] > width && speedX[i] > 0)) {
            speedX[i] = -speedX[i];
        }

        if ((posY[i] < 0 && speedY[i] < 0) || (posY[i] > height && speedY[i] > 0)) {
            speedY[i] = -speedY[i];
        }

        point(posX[i], posY[i]);
    }
}

function mousePressed() { // Resets particle locations
    for (var i = 1; i < quantity; i++) {
        posX[i] = random(0, width);
        posY[i] = random(0, height);
    }
}

function colorChange() { //For jumbo particles
    r = random(255);
    g = random(255);
    b = random(255);
}

//--------------------All particle types have the same movements as defined in draw()-------

class NormalParticle { //The standard cyan particles

    constructor(x, y) {
        this.x = posX[i];
        this.y = posX[i];
    }


    show() {
        fill(202, 255, 255, 50);
        circle(this.x, this.y, 10);
    }
}

class OddballParticle extends NormalParticle { //Will be squares instead of circles

    constructor(x, y) {
        this.x = posX[i];
        this.y = posX[i];
    }

    show() {
        fill(202, 255, 255, 50);
        rect(this.x, this.y, 10, 10);
    }
}

class JumboParticle extends OddballParticle { //Inherits Oddball, will be sqaures that flash random colors

    constructor(x, y) {
        this.x = posX[i];
        this.y = posX[i];
    }

    show() {
        colorChange();
        fill(r, g, b, 50);
        rect(this.x, this.y, 10, 10);
    }
}
