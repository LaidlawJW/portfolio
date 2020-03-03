public class Part implements Comparable<Part> {
  private String make, model, theRest;
  private int year;

  public Part(String line) {
    String[] parts = line.split(" ");
    make = parts[parts.length-3];
    year = Integer.parseInt(parts[parts.length-3]);
    for (int i = 0; i<parts.length-3; i++) {
      theRest+=parts[i]+" ";
    }
  }

  //have to have compareTo if it implements Comparable
  public int compareTo(Part other) {

    if (this.make.compareTo(rhs.make)>0) {
      return 1;
    } else if (this.make.compareTo(rhs.make)<0) {
      return -1;
    } else if (this.model.compareTo(rhs.model)>0) {
      return 1;
    } else if (this.model.compareTo(rhs.model)<0) {
      return -1;
    } else if (this.year>(rhs.year)) {
      return 1;
    } else if (this.year<(rhs.year)) {
      return -1;
    } else if (this.theRest.compareTo(rhs.theRest>0)) {
      return 1;
    } else if (this.theRest.compareTo(rhs.theRest<0)) {
      return -1;
    }
    return 0;
  }

  public String toString() {
    return "";
  }
}
