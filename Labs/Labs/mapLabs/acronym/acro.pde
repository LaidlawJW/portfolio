import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Acronyms {

  private Map<String, String> acro;

  public Acronyms() { //Sets up the needed data structures
    acro = new TreeMap<String, String>();
    String[] codes = loadStrings("acro.txt");
    ArrayList<String> test = new ArrayList<String>();
    for (String s : codes) {
      String[] expel = s.split("\\W");
      for (String x : expel) {
        if (!x.equals("")&&!x.equals(null)&&!x.equals(" ")) {
          test.add(x);
        }
      }
    }

    for (int i=0; i<test.size(); ) {
      String out = "";
      int measure = test.get(i).length();
      for (int j = i+1; j<=measure+i; j++) {
        if (test.get(j).equals(test.get(j).toLowerCase())) {
          measure++;
        }
        out += test.get(j)+" ";
      }
      acro.put(test.get(i), out.substring(0, out.length()-1));
      i += measure+1;
    }
  }

  //Delimites by dashes
  public void putEntry(String entry) { 
    String[] str = entry.split(" - ");

    if (acro.get(str[0]) == null)
      acro.put(str[0].replaceAll(" ", ""), str[1].replaceAll(" ", ""));
  }

  //Finds punctuation and sees how many words make up an acronym
  public String decode(String sent) {
    Scanner chop = new Scanner(sent);
    String output ="";

    while (chop.hasNext()) {
      String word=chop.next();
      String check=word.replaceAll("\\p{Punct}", "");

      if (acro.get(check)==null)
        output+=word + " ";
      else if (word.compareTo(check)!=0)
        output+=acro.get(check) + ". ";
      else
        output+=acro.get(word) + " ";
    }
    return output;
  }

  public String toString() { 
    return acro.toString();
  }
}
