private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  

private int r, g, b;

void setup() { //Initial settings to have a good starter tree
  size(640, 480);    
  g = 255;
  noLoop();
}

void draw() {
  background(50);
  textSize(15);
  stroke(0, 255, 0);
  stroke(r, g, b);
  fill(100, 100, 100, 100);
  line(320, 480, 320, 380);
  drawBranches(320, 380, 100, 3*Math.PI/2);

  noStroke();
  rect(430, 350, 190, 100);
  fill(255);
  text("Click here to randomize!", 435, 400);
}

void mousePressed() { //Checks for correct mouse placement
  if (mouseX>=430 && mouseX<=620 && mouseY>=350 && mouseY<=450) {
    if (mousePressed) {
      randomize();
    }
  }
}

void randomize() { //Changes colors and sizes
  r = (int)random(0, 255);
  g = (int)random(0, 255);
  b = (int)random(0, 255);
  
  smallestBranch = (int)random(6, 25); //How small the branches can be (lower = more fracts but more lag)
  fractionLength = (double)random(.7, .8); //How wide/tall the branches can be (too low will cause lag)
  branchAngle = (double)random(.1, .8); //How angled the branches can be (lower = tighter spread)
  
  redraw();
}

//Used params from draw() to form each branch
void drawBranches(int x, int y, double branchLength, double angle) {
  double angle1 = angle + branchAngle; 
  double angle2 = angle - branchAngle;

  branchLength = branchLength * fractionLength;

  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);

  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);

  line(x, y, endX1, endY1);
  line(x, y, endX2, endY2);

  if (branchLength>smallestBranch) {
    drawBranches(endX1, endY1, branchLength, angle1);
    drawBranches(endX2, endY2, branchLength, angle2);
  }
}
