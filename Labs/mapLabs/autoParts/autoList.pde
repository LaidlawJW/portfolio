import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.TreeMap;
import java.util.Scanner;
import static java.lang.System.*;

public class PartList {
  private TreeMap<Part, Integer> partsMap;

  public PartList() {
    partsMap = new TreeMap<Part, Integer>();
  }

  public PartList(String fileName) {
    this();
    String [] list = loadStrings(fileName);
    Part p;
    for (String s : list) {
      p = new Part(s);
      if (partsMap.get(p)==null) {
        partsMap.put(p, 0);
      }
      partsMap.put(p, partsMap.get(p)+1);
    }
  }

  public String toString() {
    String output="";
    for(Part p: partsMap.keySet()){
      output+=" "+p+partsMap.get(p)+"\n";
    }
    return output;
  }
}
