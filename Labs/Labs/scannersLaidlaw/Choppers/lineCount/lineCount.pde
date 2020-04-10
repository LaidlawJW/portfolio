import java.util.Scanner;
import static java.lang.System.*;

class LineCounter {
  private String line;
  private int count;

  public LineCounter() {
    setLine("");
  }

  public LineCounter(String s) {
    line=s;
  }

  public void setLine(String s) {
    line=s;
  }

  public int getCount() {
    Scanner scan=new Scanner(line);
    int count=0;
    while (scan.hasNextLine()) {
      count=count+1;
    }
    return count;
  }

  public String getLine() {
    return line;
  }

  public String toString() {
    return line+"\n"+"Items: "+count+"\n";
  }
}
