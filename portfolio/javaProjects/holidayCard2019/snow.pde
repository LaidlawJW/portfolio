class snowFlake {
  int x;
  int y;
  int xspeed;
  int yspeed;
  int size;

  public snowFlake() {
    x= (int)(Math.random()*1001);
    y= (int)(Math.random()*401)-210;
    xspeed= (int)(Math.random()*3)-1;
    yspeed= (int)(Math.random()*3)+2;
    size= (int)(Math.random()*10)+1;
  }
  void show() {
    fill(255, 255, 255);
    ellipse(x, y, size, size);
  }

  void move() {
    x+=xspeed;
    y+=yspeed;
    if (y>500) {
      y=-20;
    }
  }
}
