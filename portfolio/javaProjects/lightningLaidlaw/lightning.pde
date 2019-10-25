int startTime;

int startX=0;
int startY=250;
int endX=0;
int endY=250;

int rand1;
int rand2;
int rand3;

float strikeInterval=1400;
float lastStrike=0;
float nextStrike=0;


boolean storm=true;
boolean lightFade=true;

void setup()
{
  smooth();
  size(900, 500);
  noFill();
  background(0);
  strokeWeight(2);
}
void draw()
{
  //lightning color 
  rand1=(int)(Math.random()*255)+1;
  rand2=(int)(Math.random()*255)+1;
  rand3=(int)(Math.random()*255)+1;
  stroke(rand1, rand2, rand3);

  if (storm && millis()-lastStrike>nextStrike) {//Checks if a new bolt needs to fire
    lastStrike = millis();
    nextStrike = random(0, strikeInterval);
    while (endX<900) {//Creates the zig-zag pattern
      endX=startX+(int)(Math.random()*10);
      endY=startY+(int)(Math.random()*19)-9;
      line(startX, startY, endX, endY);
      startX=endX;
      startY=endY;
    }

    int time = millis() - startTime; 
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

void reset() {
  startX=0;
  startY=250;
  endX=0;
  endY=250;
}
