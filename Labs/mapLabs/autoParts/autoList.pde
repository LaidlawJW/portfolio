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

  ////loadStrings() or:
  //try {
  //  Scanner file = new Scanner(new File("parts.txt"));
  //  //add code here to read from the file 
  //  //and add Parts to the map

  //  catch( IOException e)  //Most specific exceptions must be listed 1st{
  //    out.println(e);
  //}

  //catch( RuntimeException e) {
  //  out.println(e);
  //}

  //catch( Exception e) {
  //  out.println(e);
  //}
  //finally {
  //  //no code needed here
  //}

  public String toString() {
    String output="";
    return output;
  }
}
