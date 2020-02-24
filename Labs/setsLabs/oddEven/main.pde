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
    String [] items = line.split(" ");
    
    
  }

  public String toString() {
    return "Odds : " + odds + "\nEvens : " + evens + "\n\n";
  }
}
