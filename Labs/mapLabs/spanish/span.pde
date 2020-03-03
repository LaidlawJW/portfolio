import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Scanner;
import static java.lang.System.*;

public class SpanishToEnglish {

  private Map<String, Set<String>> pairs;

  public SpanishToEnglish() {
    pairs = new TreeMap<String, Set<String>>();
  }

  public void putEntry(String entry) {
    String[] list = entry.split(" ");
    String k = list[0];
    String v = list[1];

    if (pairs.get(k)==null) {
      pairs.put(k, new TreeSet<String>());
    }
    pairs.get(k).add(v);
  }

  public String translate(String sent) {
    Scanner scan = new Scanner(sent);
    String output ="";

    while (scan.hasNext()) {
      output += pairs.get(scan.next())+" ";
    }
    return output;
  }

  public String toString() {
    return pairs.toString().replaceAll("\\,", "\n");
  }
}
