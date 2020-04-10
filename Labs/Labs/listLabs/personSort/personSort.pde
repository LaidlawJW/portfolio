import static java.lang.System.*;

public class Person implements Comparable<Person> {
  private int myYear;
  private int myMonth;
  private int myDay;
  private String myName;

  Person main;

  public Person( int y, int m, int d, String n) {
  }

  public int compareTo(Person other) {
    if (main.compareTo(other)==0) {
      return 0;
    }
    if (main.compareTo(other)==1) {
      return 1;
    }
    if (main.compareTo(other)==-1) {
      return -1;
    }
    return main.compareTo(other);
  }

  public String toString() {
    return "";
  }
}
