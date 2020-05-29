BST tree = new BST();
TreeNode current;
String s = "Do you like rural (left) or cities (right)?";
Scenes sc;
boolean introSlide = false;
boolean one = false;
boolean two = false;
boolean three = false;
boolean four = false;
boolean five = false;
boolean six = false;
boolean seven = false;
boolean eight = false;

void setup() {
  size(800, 600);
  current = tree.buildTree();
  sc = new Scenes();
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  text(s, 240, 200);
  changeScenes();
}

void changeScenes() {
  if (introSlide==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
  } else if (two==true) {
    sc.scene2();
  } else if (three==true) {
    sc.scene3();
  } else if (four==true) {
    sc.scene4();
  } else if (five==true) {
    sc.scene5();
  } else if (six==true) {
    sc.scene6();
  } else if (seven==true) {
    sc.scene7();
  } else if (eight==true) {
    sc.scene8();
  } else {
    introSlide=true;
  }
}

void keyPressed() {
  if (keyCode == LEFT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Hana")) {//leaf
      one = true;
      introSlide = false;
    } else if (s.equals("Split Rock")) {//leaf
      two = true;
      introSlide = false;
    } else if (s.equals("Grand Canyon")) {
      three = true;
      introSlide=false;
    } else if (s.equals("Yellowstone")) {
      four = true;
      introSlide = false;
    } else if (s.equals("San Francisco")) {
      five = true;
      introSlide = false;
    } else if (s.equals("Chicago")) {
      six = true;
      introSlide = false;
    } else if (s.equals("New York")) {
      seven = true;
      introSlide = false;
    } else if (s.equals("Eau Claire")) {
      eight = true;
      introSlide = false;
    } else {
      current = current.getLeft();
    }
    //-------------------------------------------
  } else if (keyCode == RIGHT) {
    s=(String)current.getValue();
    System.out.println(s);
    if (s.equals("Hana")) {//leaf
      one = true;
      introSlide = false;
    } else if (s.equals("Split Rock")) {//leaf
      two = true;
      introSlide = false;
    } else if (s.equals("Grand Canyon")) {
      three = true;
      introSlide=false;
    } else if (s.equals("Yellowstone")) {
      four = true;
      introSlide = false;
    } else if (s.equals("San Francisco")) {
      five = true;
      introSlide = false;
    } else if (s.equals("Chicago")) {
      six = true;
      introSlide = false;
    } else if (s.equals("New York")) {
      seven = true;
      introSlide = false;
    } else if (s.equals("Eau Claire")) {
      eight = true;
      introSlide = false;
    } else {
      current = current.getRight();
    }
  }
}

interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
