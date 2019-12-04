PImage santa;

snowFlake[] sf1= new snowFlake[300];
float grow;
float tex;
boolean lights=false;
int moonCount=0;

void setup() {
  santa=loadImage("santa.png");
  size(1000, 500);
  for (int i=0; i<sf1.length; i++) {
    sf1[i]=new snowFlake();
  }
}

void draw() {
  background(#67E8E7);

  if (mousePressed) {
    background(0, 0, 70);// Night mode
  }

  for (int i=0; i<sf1.length; i++) {
    sf1[i].move();
    sf1[i].show();
  }
  objects();
  grow();
  drawHH();  
  lights();
}

void grow() {
  fill(255, 255, 255);
  rect(0, height-95, width, grow);// Over the whole scene
  if (grow<-90) {
    grow=-90;
  } else {
    grow-=.01;
  }

  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }

  if (grow<-50) {
    grow=-50;
  } else {
    grow-=.01;
  }
}

void objects() {
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

void lights() {
  if (mousePressed) {
    moon();
    fill(#EFF033);
    rect(445, 215, 25, 20);
    fill(#3A3E46);
    rect(445, 215, 25, 10);
    fill(#EFF033);
    textSize(50);//star
    text("*", 58, 223);
  } else {
    fill(58, 62, 70);// Light color
    rect(445, 215, 25, 20);// Box
  }
}

void drawHH() {// Needs to loop over
  textSize(30);
  fill(#FCF0EB);
  text("Happy Holidays!", tex+1000, 455);
  fill(0);
  santa.resize(175, 110);
  image(santa, tex+800, 355);
  if (tex>0) {
    tex=1000;
  } else {
    tex-=1;
  }
}
