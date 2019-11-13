//declare universal variables here
PImage bacteria, phage, background;
Bacteria bact;
ArrayList<Phage> phages;

int speed;
boolean infected=false;
boolean active=true;

void setup() {
  size(1000, 563);

  background=loadImage("bloodstream.png");

  bacteria=loadImage("bacteria.png");
  bact=new Bacteria(490, 268);

  phage=loadImage("phage.png");
  phages = new ArrayList<Phage>();


  phages.add(new Phage((random(-width, 2 * width)), random(height, 2 * height), .015 + (3 * speed)));
  
  speed++;
}

void draw() {
  // Calls the methods for bacteria and phages
  background(background);
  noStroke();

  bact.show();

  for (Phage ph : phages) {
    ph.show();
    ph.target();
    ph.check();
  }
}


class Bacteria {
  private int x;
  private int y;

  Bacteria(int x, int y) {
    this.x=x;
    this.y=y;
  }

  void show() {
    image(bacteria, x, y, 60, 60);
  }
}

class Phage {
  private float x;
  private float y;
  private float accel;

  Phage(float x, float y, float speed) {
    this.x=x;
    this.y=y;
    this.accel=speed;
  }

  void target() { //Goes to the bacteria and changes their color to indicate infection
    float tx1 = bact.x - x;
    x += tx1 * accel;

    float ty1 = bact.y - y;
    y += ty1 * accel;

    print("Phage pos: "+x+", "+y+" ");
  }

  void retreat() {
    float tx2=-bact.x-x-100;
    x += tx2 * accel;

    float ty2=-bact.y-y-100;
    y += ty2 * accel;
  }

  void multiply() {
      int random=40;
      image(phage, bact.x-random, bact.y+random, 40, 40);
      image(phage, bact.x+random, bact.y-random, 40, 40);
      image(phage, bact.x-random, bact.y-random, 40, 40);
      image(phage, bact.x+random, bact.y+random, 40, 40);
  }

  void check() {
    if (infected==false) {
      if (x<=bact.x+5 && y<=bact.y+5) {
        bacteria=loadImage("bacteriaInf.png");
        infected=true;
      }
    }
    if (infected==true) {
      retreat();
      multiply();
    }
  }

  void show() {
    image(phage, x, y, 40, 40);
  }
}
