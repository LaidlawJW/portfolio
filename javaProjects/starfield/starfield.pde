int quantity=1500;
int r, g, b;

float posX[] = new float[quantity];
float posY[] = new float[quantity];

float speedX[] = new float[quantity];
float speedY[] = new float[quantity];


void setup() {// Initializes positions
  size(800, 600);
  strokeWeight(13);
  fill(202, 255, 255, 50);
  frameRate(60);

  for (int i=1; i<quantity; i++) {// Initial positions are random
    posX[i]=random(0, width);
    posY[i]=random(0, height);
  }

  posX[0] = 0;
  posY[0] = 0;
}

void draw() { //
  background(0, 128);
  speedX[0] = speedX[0] * .5+(mouseX - posX[0]) * 1.91;
  speedY[0] = speedY[0] * .5+(mouseY - posY[0]) * 1.91;

  posX[0] += speedX[0];
  posY[0] += speedY[0];

  for (int i = 0; i < quantity; i++) {
    float change=1024 / (sq(posX[0] - posX[i]) + sq(posY[0] - posY[i]));

    speedX[i] = speedX[i] * 0.95 + (speedX[0] - speedX[i]) * change;
    speedY[i] = speedY[i] * 0.95 + (speedY[0] - speedY[i]) * change;

    posX[i] += speedX[i];
    posY[i] += speedY[i];

    if ((posX[i] < 0 && speedX[i] < 0) || (posX[i] > width && speedX[i] > 0)) {
      speedX[i] = -speedX[i];
    }

    if ((posY[i] < 0 && speedY[i] < 0) || (posY[i] > width && speedY[i] > 0)) {
      speedY[i] = -speedY[i];
    }

    point(posX[i], posY[i]);
  }
}

void mousePressed() {// Scrambles particle locations
  for (int i = 0; i < quantity; i++) {
    posX[i] = random(0, width);
    posY[i] = random(0, width);
  }
}



class NormalParticle implements Particle { //The standard cyan particles

  NormalParticle() {
  }

  void move() {
  }

  void show() {
  }
}

interface Particle { //methods that all particle types use
  public void move();
  public void show();
}

class OddballParticle implements Particle { //uses the interface, will be sqaures instead of circles

  OddballParticle() {
  }

  void move() {
  }

  void show() {
  }
}

class JumboParticle extends OddballParticle {// inherits oddball, will be sqaures that flash colors


  JumboParticle() {
  }

  void move() { //Moves them into the correct positions
  }

  void show() {
  }
}
