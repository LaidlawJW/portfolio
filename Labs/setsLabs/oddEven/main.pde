import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.Scanner;
import static java.lang.System.*;

public static class OddEvenSets {

  public static Set <Integer> getEvens(String line) {
    String [] items = line.split(" ");
    Set<Integer> evens = new TreeSet<Integer>();
    Set<Integer> odds = new TreeSet<Integer>();

    for (String s : items) {
      int num=parseInt(s);

      if (num % 2 == 0) {
        evens.add(num);
      } else {
        odds.add(num);
      }
    }
    return evens;
  }

  public static Set <Integer> getOdds(String line) {
    String [] items = line.split(" ");
    Set<Integer> evens = new TreeSet<Integer>();
    Set<Integer> odds = new TreeSet<Integer>();

    for (String s : items) {
      int num=parseInt(s);

      if (num % 2 == 0) {
        evens.add(num);
      } else {
        odds.add(num);
      }
    }
    return odds;
  }
}
