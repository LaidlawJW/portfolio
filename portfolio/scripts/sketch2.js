'use strict'
let die;
var total;

function setup() {
    createCanvas(350, 500);
    background(40, 148, 3);
    noLoop();
}

function draw() {
    total = 0;
    createCanvas(40, 148, 3);
    for (var i = 0; i < 270; i += 60) {
        for (var j = 0; j < 215; j += 60) {
            die = new Die(i, j);
            die.roll();
            die.total();
            die.show();
        }
    }
}

function mousePressed() {
    draw(); //Calls draw again
}

class Die //models one single dice cube
{
    //variable declarations here
    constructor(x, y) { //Constructor
        //variable initializations here
        this.x = x;
        this.y = y;
    }

    roll() {
        var rand = (Math.random() * 6) + 1;
    }

    total() {
        return total += this.rand;
    }

    show() {

        if (this.rand == 1) { //One 
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 25, this.y + 25, 10); //Middle dot;
        }

        if (this.rand == 2) { //Two
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
        }

        if (this.rand == 3) { //Three
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 25, this.y + 25, 10); //Middle diagonal dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
        }

        if (this.rand == 4) { //Four
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 10, 10); //Top left diagonal dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
            circle(this.x + 40, this.y + 40, 10); //Bottom right diagonal dot
        }

        if (this.rand == 5) { //Five
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 10, 10); //Top left diagonal dot
            circle(this.x + 25, this.y + 25, 10); //Middle dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
            circle(this.x + 40, this.y + 40, 10); //Bottom right diagonal dot
        }

        if (this.rand == 6) { //Six
            fill(255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 10, 10); //Top left diagonal dot
            circle(this.x + 10, this.y + 25, 10); //Middle left dot
            circle(this.x + 40, this.y + 25, 10); //Middle right dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
            circle(this.x + 40, this.y + 40, 10); //Bottom right diagonal dot
        }

        //End of dice sides

        textSize(20);
        text("Total: " + total, 10, 30);
        fill(0, 0, 0);
    }
}
