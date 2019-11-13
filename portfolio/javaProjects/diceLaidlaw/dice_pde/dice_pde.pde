int total;
int rand;
void setup()
{
  noLoop();
  size(350, 500);
  background(40, 148, 3);
}

void draw()//Increment by 60, five dice per row, four rows
{
  total=0;
  background(40, 148, 3);
  Die die1=new Die(30, 35);
  die1.roll();
  die1.total();
  die1.show();

  Die die2=new Die(90, 35);
  die2.roll();
  die2.total();
  die2.show();

  Die die3=new Die(150, 35);
  die3.roll();
  die3.total();
  die3.show();

  Die die4=new Die(210, 35);
  die4.roll();
  die4.total();
  die4.show();

  Die die5=new Die(270, 35);
  die5.roll();
  die5.total();
  die5.show();

  //Row 2

  Die die6=new Die(30, 95);
  die6.roll();
  die6.total();
  die6.show();

  Die die7=new Die(90, 95);
  die7.roll();
  die7.total();
  die7.show();

  Die die8=new Die(150, 95);
  die8.roll();
  die8.total();
  die8.show();

  Die die9=new Die(210, 95);
  die9.roll();
  die9.total();
  die9.show();

  Die die10=new Die(270, 95);
  die10.roll();
  die10.total();
  die10.show();

  //Row 3

  Die die11=new Die(30, 155);
  die11.roll();
  die11.total();
  die11.show();

  Die die12=new Die(90, 155);
  die12.roll();
  die12.total();
  die12.show();

  Die die13=new Die(150, 155);
  die13.roll();
  die13.total();
  die13.show();

  Die die14=new Die(210, 155);
  die14.roll();
  die14.total();
  die14.show();

  Die die15=new Die(270, 155);
  die15.roll();
  die15.total();
  die15.show();

  //Row 4

  Die die16=new Die(30, 215);
  die16.roll();
  die16.total();
  die16.show();

  Die die17=new Die(90, 215);
  die17.roll();
  die17.total();
  die17.show();

  Die die18=new Die(150, 215);
  die18.roll();
  die18.total();
  die18.show();

  Die die19=new Die(210, 215);
  die19.roll();
  die19.total();
  die19.show();

  Die die20=new Die(270, 215);
  die20.roll();
  die20.total();
  die20.show();
  // End dice draws
  textSize(20);
  text("Total: "+total, 10, 30); 
  fill(0, 0, 0);
}

void mousePressed()
{
  redraw();//Calls draw again
}

class Die//models one single dice cube
{
  //variable declarations here
  private int x;
  private int y;

  Die(int x, int y)//constructor
  {
    //variable initializations here
    this.x=x;
    this.y=y;
  }

  void roll()
  {
    rand=(int)(Math.random()*6)+1;
  }

  int total(){
    return total+=rand;
  }

  void show()
  {
    if (rand==1) {//One 
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+25, y+25, 10);//Middle dot
    }

    if (rand==2) {//Two
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+40, y+10, 10);//Top right diagonal dot
      circle(x+10, y+40, 10);//Bottom left diagonal dot
    }

    if (rand==3) {//Three
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+40, y+10, 10);//Top right diagonal dot
      circle(x+25, y+25, 10);//Middle diagonal dot
      circle(x+10, y+40, 10);//Bottom left diagonal dot
    }

    if (rand==4) {//Four
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+40, y+10, 10);//Top right diagonal dot
      circle(x+10, y+10, 10);//Top left diagonal dot
      circle(x+10, y+40, 10);//Bottom left diagonal dot
      circle(x+40, y+40, 10);//Bottom right diagonal dot
    }

    if (rand==5) {//Five
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+40, y+10, 10);//Top right diagonal dot
      circle(x+10, y+10, 10);//Top left diagonal dot
      circle(x+25, y+25, 10);//Middle dot
      circle(x+10, y+40, 10);//Bottom left diagonal dot
      circle(x+40, y+40, 10);//Bottom right diagonal dot
    }

    if (rand==6) {//Six
      fill(255, 255, 255);
      rect(x, y, 50, 50, 7);
      fill(0, 0, 0);
      circle(x+40, y+10, 10);//Top right diagonal dot
      circle(x+10, y+10, 10);//Top left diagonal dot
      circle(x+10, y+25, 10);//Middle left dot
      circle(x+40, y+25, 10);//Middle right dot
      circle(x+10, y+40, 10);//Bottom left diagonal dot
      circle(x+40, y+40, 10);//Bottom right diagonal dot
    }
    //End of dice sides
  }
}
