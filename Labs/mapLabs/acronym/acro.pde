import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class Acronyms {

  private Map<String, String> acro;

  public Acronyms() {
    acro = new TreeMap<String, String>();
    String[] codes = loadStrings("acro.txt");
    ArrayList<String> test = new ArrayList<String>();
    for (String s : codes) {
      String[] expel = s.split("\\W");
      for (String y : expel) {
        if (!y.equals("")&&!y.equals(null)&&!y.equals(" ")) {
          test.add(y);
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

  public void putEntry(String entry) {
    String out = "";
    String[] splice = entry.split("\\W");
    ArrayList<String> test = new ArrayList<String>();
    for (String s : splice) {
      if (!s.equals("")&&!s.equals(null)&&!s.equals(" ")) {
        test.add(s);
      }
    }
    for (int i = 1; i<test.size(); i++) {
      out += test.get(i)+" ";
    }
    acro.put(test.get(0), out.substring(0, out.length()-1));
  }

  public String decode(String sent) {
    Scanner chop = new Scanner(sent);
    String output = "";

    while (chop.hasNext()) {
      boolean check = false;
      char select = 45;
      String n = chop.next(); 

      if (n.contains(".")||n.contains("?")||n.contains("!")) {
        check = true;
        select = n.charAt(n.length()-1);
      }

      String[] add = n.split("\\W");
      String keys = "";

      for (String s : add) {
        if (!s.equals(null)&&!s.equals("")&&!s.equals(" "))
          keys += s;
      }

      if (acro.containsKey(keys)) { 
        if (check) { 
          output += acro.get(keys)+"."+" ";
        } else {
          output += acro.get(keys)+" ";
        }
      } else {
        if (check) {
          output += keys+"."+" ";
        } else {
          output += keys+" ";
        }
      }
    }
    chop.close();
    return output;
  }

  public String toString() {
    return acro.toString();
  }
}
