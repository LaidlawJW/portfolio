//declare universal variables here
PImage bacteria, phage;
Bacteria bact;
ArrayList<Phage> phages;
int speed;
boolean infected, active=false;


void setup() {
  size(600, 600);
  background(255);
  circle(width/2, height/2, width);// Edge of dish
  fill(230);
  circle(width/2, height/2, width);// Interior of dish

  bacteria=loadImage("bacteria.png");
  bact=new Bacteria(width/2, height/2);
  
  phage=loadImage("phage.png");
  phages = new ArrayList<Phage>();

  int randomW = (int)random(2);
  int randomH = (int)random(2);
  if (randomW == 0) {
    if (randomH == 0)
      phages.add(new Phage(random(-width, 0), random(-height, 0), .008 + (.003 * speed)));
    else
      phages.add(new Phage(random(-width, 0), random(height, 2 * height), .008 + (.003 * speed)));
  } else {
    if (randomH == 0)
      phages.add(new Phage(random(width, 2 * width), random(-height, 0), .008 + (.003 * speed)));
    else
      phages.add(new Phage(random(-width, 2 * width), random(height, 2 * height), .008 + (.003 * speed)));
  }
  speed++;
}

void draw() {
  // Calls the methods for bacteria and phages
    for(Phage ph : phages) {
      ph.show();
      ph.target();
    }
}

class Bacteria {
  private float x;
  private float y;
  private float accel=0.4;

  Bacteria(float x, float y) {
    this.x=x;
    this.y=y;
  }

  void move() {
    float tx = mouseX - x;
    x += tx * accel;

    float ty = mouseY - y;
    y += ty * accel;
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
    accel=speed;
  }

  void target() { //Goes to the bacteria and changes their color to indicate infection
    float tx = bact.x-35 - x;
    x += tx * accel;

    float ty = bact.y-35 - y;
    y += ty * accel;
  }

  void show() {
    image(phage, x, y, 60, 60);
  }
}
