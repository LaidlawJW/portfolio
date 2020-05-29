public class Scenes {
  PImage img;

  public Scenes() {
  }

  void scene0() {
    text("Location Game", 340, 100);
  }

  void scene1() {
    img=loadImage("data/hana.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Hana", width/2-(width/10), 30);
  }

  void scene2() {
    img=loadImage("data/splitRock.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Split Rock", width/2-(width/10), 30);
  }

  void scene3() {
    img=loadImage("data/gc.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Grand Canyon", width/2-(width/10), 30);
  }

  void scene4() {
    img=loadImage("data/ys.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Yellowstone", width/2-(width/10), 30);
  }

  void scene5() {
    img=loadImage("data/sf.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("San Francisco", width/2-(width/10), 30);
  }

  void scene6() {
    img=loadImage("data/ch.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Chicago", width/2-(width/10), 30);
  }

  void scene7() {
    img=loadImage("data/ny.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("New York", width/2-(width/10), 30);
  }

  void scene8() {
    img=loadImage("data/ec.jpg");
    img.resize(500, 300);
    image(img, 0, 0);
    fill(0);
    text("Eau Claire", width/2-(width/10), 30);
  }
}
