import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.ArrayList;
import static java.lang.System.*;

public static class UniquesDupes {
  public static Set<String> getUniques(String input) {
    String [] items = input.split(" ");
    Set<String> uniques = new TreeSet<String>();
    
    for (String s : items) {
      uniques.add(s);
    }

    return uniques;
  }

  public static Set<String> getDupes(String input) {
    String [] items = input.split(" ");
    Set<String> uniques = new TreeSet<String>();
    Set<String> dupes = new TreeSet<String>();

    for (String s : items) {
      if (uniques.add(s)==false) {
        dupes.add(s);
      }
    }
    return dupes;
  }
}
