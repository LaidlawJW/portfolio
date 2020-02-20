import java.util.Set;
import java.util.TreeSet;
import java.util.Arrays;
import java.util.ArrayList;
import static java.lang.System.*;

public class UniquesDupes
{
  public Set<String> getUniques(String input) {
    String [] items = "dupes.txt".split(" ");
    Set<String> uniques = new TreeSet<String>();

    Iterator it=uniques.iterator();
    while (it.hasNext()) {
    }

    return uniques;
  }

  public Set<String> getDupes(String input) {
    String [] items = "dupes.txt".split(" ");
    Set<String> dupes = new TreeSet<String>(Arrays.asList(items));

    Iterator it=dupes.iterator();
    while (it.hasNext()) {
    }

    return dupes;
  }
}
