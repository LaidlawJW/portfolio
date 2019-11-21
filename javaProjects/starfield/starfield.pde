ArrayList<Particle> part;
float newAngle;
float newVeloc;
float newTarget;
float uniRed;
float uniGreen;
float uniBlue;
int timer;

void setup() {
  //your code here
  size(1000, 1000);
  noStroke();
  fill(255);
  newAngle = -0.01;
  newVeloc = random(2, 5);
  newTarget = random(0, 360);
  uniRed = random(0, 255);
  uniGreen = random(0, 255);
  uniBlue = random(0, 255);
  timer = 0;
  part = new ArrayList<Particle>();
  
  for (int i = 0; i < 20; i++) {
    part.add(new OddballParticle());
  }
  
  for (int i = 0; i < 50; i++) {
    part.add(new NormalParticle());
  }
}

void draw() {
  //your code here
  timer ++;
  background(0);
  
  for (int i = 0; i < part.size(); i++) {
    part.get(i).move();
  }
  
  for (int i = 0; i < part.size(); i++) {
    part.get(i).show();
  }
  
  if (timer < 100) {

    for (int i = 0; i < 20; i++) {
      part.add(new NormalParticle());
    }

    if (timer > 100 && (int)random(0, 20) == 4) {
      part.add(new JumboParticle());
    }
  } else {
    
    newAngle = -0.01;
    newVeloc = random(2, 5);
    newTarget = random(0, 360);
    uniRed = random(0, 255);
    uniGreen = random(0, 255);
    uniBlue = random(0, 255);

    if (timer > 300) {
      timer = 0;
    }
  }
  for (int i = 0; i < part.size(); i++) {
    if (dist(part.get(i).getX(), part.get(i).getY(), width/2, height/2) > width || part.get(i).getElapse() > 500) {
      part.remove(i);
    }
  }
}

class NormalParticle implements Particle {
  //your code here
  float x;
  float y;
  float speed;
  float angle;
  int tic;
  float a;
  float v;
  float r;
  float g; 
  float b;
  NormalParticle() {
    x = width/2;
    y = height/2;
    speed = 2.5;
    angle = random(0, 50) + newTarget;
    tic = 0;
    a = newAngle;
    v = newVeloc;
    r = uniRed + random(-20, 20);
    g = uniGreen + random(-20, 20);
    b = uniBlue + random(-20, 20);
  }

  void move() {
    tic ++;
    x += speed*cos(radians(angle));
    y += speed*sin(radians(angle));
    angle -= ((a * tic) + v);
  }

  void show() {
    fill(r, g, b);
    ellipse(x, y, 10, 10);
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  int getElapse() {
    return tic;
  }
}

interface Particle {
  //your code here
  void move();
  void show();
  float getX();
  float getY();
  int getElapse();
}

class JumboParticle extends NormalParticle implements Particle //uses an interface
{
  JumboParticle() {
  }

  void move() {
    super.move();
  }

  void show() {
    fill(r, g, b);
    ellipse(x, y, 30, 30);
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  int getElapse() {
    return tic;
  }
}

class OddballParticle extends NormalParticle implements Particle //uses the interface
{
  OddballParticle() {
  }

  void move() {
    r = uniRed + random(-20, 20);
    g = uniGreen + random(-20, 20);
    b = uniBlue + random(-20, 20);
  }

  void show() {
    ellipse((width/2), (height/2), 15, 15);
  }

  float getX() {
    return x;
  }

  float getY() {
    return y;
  }

  int getElapse() {
    return 0;
  }
}
