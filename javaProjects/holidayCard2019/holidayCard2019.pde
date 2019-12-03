PImage santa;
//santa=loadImage("santa.png");

snowFlake[] sf1= new snowFlake[300];
float grow;
float tex;
boolean lights=false;
int moonCount=0;
void setup() {
  size(1000, 500);
  //img=loadImage(
  for (int i=0; i<sf1.length; i++) {
    sf1[i]=new snowFlake();
  }
}
void draw() {
  background(#67E8E7);
  if (mousePressed) {//Prob need a fix
    background(0, 0, 70);// Night mode
  }
  for (int i=0; i<sf1.length; i++) {
    sf1[i].move();
    sf1[i].show();
  }
  // fix me grow();
  house();
  drawHH();  
  mousePressed();// fix me
}
void grow() {
  fill(255, 255, 255);
  rect(0, height-100, width, grow);
  if (grow<-90) {
    grow=-90;
  } else {
    grow-=.01;
  }
  fill(255, 255, 255);
  rect(680, 170, 240, grow);
  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }
  fill(255, 255, 255);
  rect(560, 270, 150, grow);
  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }
}
void house() {
  //ground
  noStroke();    
  fill(255, 255, 255);
  rect(0, height-100, width, 100);
  fill(#3E3939);
  rect(0, height-75, width, 45);        
  
  //sun
  fill(#DFE312);
  ellipse(100, 100, 50, 50);
  
  //lightpost
  fill(#3A3E46);
  rect(450, 215, 15, 190);
  
  fill(255, 255, 255);
  triangle(0, 400, 0, 250, 350, 400);
  //tree1
  fill(#096C18);
  triangle(40, 300, 70, 200, 100, 300);
  fill(#096C18);
  triangle(50, 250, 70, 200, 90, 250);
  fill(#582209);
  rect(60, 300, 20, 30);
}
void mousePressed() {
  if (mousePressed) {
    lights=true;
    moon();
    fill(#EFF033);
    rect(445, 215, 25, 20);
    fill(#3A3E46);
    rect(445, 215, 25, 10);
    fill(#EFF033);
    textSize(50);//star
    text("*", 58, 223);
  } else {
    lights=false;
    fill(#3A3E46);
    rect(445, 215, 25, 20);
  }
}
public void drawHH() {
  textSize(30);
  fill(#FCF0EB);
  text("Happy Holidays!", tex+1000, 455);
  if (tex>0) {
    tex=1000;
  } else {
    tex-=.9;
  }
}
