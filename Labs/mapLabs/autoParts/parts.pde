import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Part implements Comparable<Part> {
  private String make, model, theRest = "";
  private int year;

  public Part(String line) {
    String[] parts = line.split(" ");
    int i = parts.length-1;

    year = Integer.parseInt(parts[i]);
    i--;
    model = parts[i];
    i--;
    make = parts[i];
    i--;

    while (i>=0) {
      theRest = parts[i]+" "+theRest;
      i--;
    }
  }

  //have to have compareTo if it implements Comparable
  public int compareTo(Part other) {

    if (this.make.compareTo(other.make)!=0) {
      return this.make.compareTo(other.make);
    }

    if (this.model.compareTo(other.model)!=0) {
      return this.model.compareTo(other.model);
    }

    if (this.year>other.year) {
      return 1;
    }

    if (this.year<other.year) {
      return -1;
    }

    return this.theRest.compareTo(other.theRest);
  }

  public String toString() {
    return "" +make+" "+model+" "+year+ " "+theRest+" ";
  }
}
