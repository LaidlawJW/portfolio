double x, y, speed, angle;
int r, g, b;

void setup(){
  background(0);
  size(800, 600);
}

void draw(){ //declares all particles
  //your code here
}

class NormalParticle implements Particle { //The 'dust' effect particles (disintegrates then swirls back into the guantlet shape)

  NormalParticle(){
  }
  
  void move(){
    x+=Math.cos(angle*speed);
    y+=Math.sin(angle*speed);
  }
  
  void show(){
    
  }

}

interface Particle { //methods that all particle types use
  public void move();
  public void show();
}

class OddballParticle implements Particle { //uses the interface, 
  
  OddballParticle(){
  }
  
  void move() {
    
  }
  
  void show() {
  
  }
}

class JumboParticle extends OddballParticle {// inherits oddball, will be a larger particle (infinity stone)
  
  private color stone;
  
  JumboParticle(color stone){
    this.stone=stone;
  }
  
  void move() { //Moves them into the correct positions
    
  }
  
  void show() {
  
  }
}
