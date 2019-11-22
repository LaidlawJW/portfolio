var part;
var newAngle;
var newVeloc;
var newTarget;
var uniRed;
var uniGreen;
var uniBlue;
var timer;
var totalElapse;

function setup() {
    //your code here
    createCanvas(windowWidth, windowHeight);
    frameRate(60)
    noStroke();
    fill(255);
    newAngle = -0.1;
    newVeloc = random(2, 10);
    newTarget = random(0, 360);
    uniRed = random(0, 255);
    uniGreen = random(0, 255);
    uniBlue = random(0, 255);
    timer = 0;
    totalElapse = 0;

    part = [];

    for (let i = 0; i < 10; i++) {
        part.push(new NormalParticle());
    }

    for (let i = 0; i < 1; i++) {
        part.push(new OddballParticle());
    }
}

function windowResized() {
    resizeCanvas(windowWidth, windowHeight);
}

function draw() {
    timer++;
    background(0);

    for (let i = 0; i < part.length; i++) {
        part[i].move();
    }

    for (let i = 0; i < part.length; i++) {
        part[i].show();
    }

    if (timer < 300) {
        for (let i = 0; i < 10; i++) {
            part.push(new NormalParticle());
        }
    } else {
        newAngle = -0.1;
        newVeloc = random(2, 10);
        newTarget = random(0, 360);
        uniRed = random(0, 255);
        uniGreen = random(0, 255);
        uniBlue = random(0, 255);
        if (timer > 100) {
            timer = 0;
            totalElapse++;
            if (totalElapse > 3) {
                totalElapse = 0;
            }
        }
    }

    for (let i = 0; i < part.length; i++) {
        if (dist(part[i].getX(), part[i].getY(), width / 2, height / 2) > width || part[i].getElapse() > 300) {
            part.splice(i, 1);
        }
    }
}

class NormalParticle {
    //your code here
    constructor() {
        this.x = width / 2;
        this.y = height / 2;
        this.speed = 2.5;
        this.time = 0;
        this.a = newAngle;
        this.v = newVeloc;
        this.r = uniRed + random(-20, 20);
        this.g = uniGreen + random(-20, 20);
        this.b = uniBlue + random(-20, 20);

        if (totalElapse == 0) {
            this.angle = ((random([0, 1, ]) == 0) ? random(180, 240) : random(0, 60)) + newTarget;
        } else if (totalElapse == 1) {
            this.angle = random(0, 360) + newTarget;
            this.speed = 6;
        } else if (totalElapse == 2) {
            this.angle = random(0, 360) + newTarget;
        } else if (totalElapse == 3) {
            this.angle = random(0, 360) + newTarget;
        } else if (totalElapse == 4) {
            this.angle = newTarget;
            this.x = random(0, width);
            this.y = random(0, height);
            this.time = 300;
        }
    }

    move() {
        this.time++;
        this.x += this.speed * cos(radians(this.angle));
        this.y += this.speed * sin(radians(this.angle));
        this.angle -= ((this.a * this.time) + this.v);
    }

    show() {
        fill(this.r, this.g, this.b);
        ellipse(this.x, this.y, 5, 5);
    }

    getX() {
        return this.x;
    }

    getY() {
        return this.y;
    }

    getElapse() {
        return this.time;
    }
}

class OddballParticle extends NormalParticle {
    constructor() {
        super();
    }

    move() { //Random colors
        super.r = uniRed + random(-20, 20);
        super.g = uniGreen + random(-20, 20);
        super.b = uniBlue + random(-20, 20);
    }

    show() {
        ellipse((width / 2), (height / 2), 15, 15);
    }

    getX() {
        return (width / 2);
    }

    getY() {
        return (height / 2);
    }

    getElapse() {
        return 0;
    }
}
