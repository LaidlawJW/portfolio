import java.util.Scanner;
import static java.lang.System.*;

public class TheLine
{
  private String line;

  public TheLine() {
  }

  public TheLine(String s) {
    line=s;
  }

  public int getLargest() {
    int largest=0;
    int smallest=0;
    Scanner scan=new Scanner(line);
    while (scan.hasNextInt()) {
      int input = scan.nextInt();
        largest = Math.max(largest, input);
        smallest = Math.min(smallest, input);
    }
    return largest;
  }

  public String toString( ) {
    return line+"\n Largest: "+getLargest()+"\n";
  }
}
