'use strict'

function setup() {
    noLoop();
    CreateCanvas(350, 500);
    background(40, 148, 3);
}

function draw() //Increment by 60, five dice per row, four rows
{
    Die die1 = new Die(30, 35);
    die1.roll();
    die1.show();

    Die die2 = new Die(90, 35);
    die2.roll();
    die2.show();

    Die die3 = new Die(150, 35);
    die3.roll();
    die3.show();

    Die die4 = new Die(210, 35);
    die4.roll();
    die4.show();

    Die die5 = new Die(270, 35);
    die5.roll();
    die5.show();

    //Row 2

    Die die6 = new Die(30, 95);
    die6.roll();
    die6.show();

    Die die7 = new Die(90, 95);
    die7.roll();
    die7.show();

    Die die8 = new Die(150, 95);
    die8.roll();
    die8.show();

    Die die9 = new Die(210, 95);
    die9.roll();
    die9.show();

    Die die10 = new Die(270, 95);
    die10.roll();
    die10.show();

    //Row 3

    Die die11 = new Die(30, 155);
    die11.roll();
    die11.show();

    Die die12 = new Die(90, 155);
    die12.roll();
    die12.show();

    Die die13 = new Die(150, 155);
    die13.roll();
    die13.show();

    Die die14 = new Die(210, 155);
    die14.roll();
    die14.show();

    Die die15 = new Die(270, 155);
    die15.roll();
    die15.show();

    //Row 4

    Die die16 = new Die(30, 215);
    die16.roll();
    die16.show();

    Die die17 = new Die(90, 215);
    die17.roll();
    die17.show();

    Die die18 = new Die(150, 215);
    die18.roll();
    die18.show();

    Die die19 = new Die(210, 215);
    die19.roll();
    die19.show();

    Die die20 = new Die(270, 215);
    die20.roll();
    die20.show();
    // End dice draws
}

function mousePressed() {
    draw(); //Calls draw again
}

class Die //models one single dice cube
{
    //variable declarations here
    var x;
    var y;
    var total;
    var ones;
    var twos;
    var threes;
    var fours;
    var fives;
    var sixes;
    var rand;
    var first;

    constructor(x, y) { //Constructor
        //variable initializations here
        this.x = x;
        this.y = y;
        this.total = total;
        this.ones = ones;
        this.twos = twos;
        this.threes = threes;
        this.fours = fours;
        this.fives = fives;
        this.sixes = sixes;
        this.rand = rand;
    }

    function roll() {
        rand = (Math.random() * 6) + 1;
    }

    function show() {

        if (this.rand == 1) { //One 
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 25, this.y + 25, 10); //Middle dot
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

        if (rand == 4) { //Four
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 10, 10); //Top left diagonal dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
            circle(this.x + 40, this.y + 40, 10); //Bottom right diagonal dot
        }

        if (rand == 5) { //Five
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
            circle(this.x + 40, this.y + 10, 10); //Top right diagonal dot
            circle(this.x + 10, this.y + 10, 10); //Top left diagonal dot
            circle(this.x + 25, this.y + 25, 10); //Middle dot
            circle(this.x + 10, this.y + 40, 10); //Bottom left diagonal dot
            circle(this.x + 40, this.y + 40, 10); //Bottom right diagonal dot
        }

        if (rand == 6) { //Six
            fill(255, 255, 255);
            rect(this.x, this.y, 50, 50, 7);
            fill(0, 0, 0);
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
