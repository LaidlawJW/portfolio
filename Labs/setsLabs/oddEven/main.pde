import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import static java.lang.System.*;

public class OddEvenSets {

  private Set<Integer> odds;
  private Set<Integer> evens;

  public OddEvenSets() {
    odds = new TreeSet<Integer>();
    evens = new TreeSet<Integer>();
  }

  public OddEvenSets(String line) {
    this();
    String [] items = line.split(" ");

    for (String s : items) {
      int num=parseInt(s);
      
      if (num % 2 == 0) {
        evens.add(num);
      } else {
        odds.add(num);
      }
    }
  }

  public String toString() {
    return "Odds: " + odds + "\nEvens: " + evens + "\n\n";
  }
}
