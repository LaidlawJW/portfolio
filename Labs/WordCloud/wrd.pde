class Word { // Getters and setters

  public Word() {
  }

  private double force;
  private double accel;
  private double velx;
  private double vely;
  private double restx;
  private double resty;
  private double tempy;
  private double tempx;
  private double damp;
  private double k;

  private double mass;

  private String wrdName;
  private int wrdAmount;

  public Word(String w) {
  }

  public String getName() {
    return wrdName;
  }

  public int getAmount() {
    return wrdAmount;
  }

  public int setAmount(int count) {
    this.wrdAmount=count;
  }

  public int compareTo(Word other) {
    if (this.wrdAmount>other.wrdAmount) {
      return 1;
    }

    if (this.wrdAmount<other.wrdAmount) {
      return -1;
    }
    return this.wrdName.compareTo(other);
  }

  void move() {
    force=-k*(tempy-resty);
    accel=force/mass;
    vely=damp*(vely+accel);
    tempy=tempy+vely;

    force=-k*(tempx-restx);
    accel=force/mass;
    velx=damp*(velx+accel);
    tempx=tempx+velx;
  }

  void show() {
    fill(0, 0, 0);
  }
}
