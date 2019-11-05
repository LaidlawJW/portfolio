//declare universal variables here

Bacteria bact[];
Phage ph[];

void setup() {
  size(600, 600);
  background(255);
  circle(width/2, height/2, width);// Edge of dish
  fill(230);
  circle(width/2, height/2, width);// Interior of dish

  for (int i=0; i<4; i++) {// Bacteria
    for (int j=0; j<4; j++) {
      bact[i*4*j]= new Bacteria(10+10*j, 10+10*i);
    }
  }

  for (int i=0; i<4; i++) {// Phage
    for (int j=0; j<4; j++) {
      ph[i*4*j]= new Phage(10+10*j, 10+10*i);
    }
  }
}

void draw() {
  // Calls the methods for bacteria and phages
  for (int x=0; x<10; x++) {// Bacteria
    bact[x].move();
    bact[x].show();
  }

  for (int x=0; x<10; x++) {// Phage
    ph[x].target();
    ph[x].show();
  }
}

class Bacteria {
  private float x;
  private float y;
  private float rgb;
  private boolean infected;

  Bacteria(float x, float y) {
    this.x=x;
    this.y=y;
    this.rgb=rgb;
    this.infected=infected;
  }

  void move() {
  }

  void show() {
  }
}

class Phage {
  private float x;
  private float y;
  private int rgb;

  Phage(float x, float y) {
    this.x=x;
    this.y=y;
    this.rgb=rgb;
  }

  void target() { //Goes to the bacteria and changes their color to indicate infection
  }

  void show() {
  }
}
