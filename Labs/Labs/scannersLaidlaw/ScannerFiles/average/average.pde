import java.util.Scanner;
import static java.lang.System.*;

import java.util.Scanner;
import static java.lang.System.*;

public class Average
{
  private String line;

  public Average() {
  }

  public Average (String s) {
    line=s;
  }

  public void setAverage(String s) {
    line=s;
  }

  public int getLowest() {
    int largest=0;
    int smallest=0;
    Scanner scan=new Scanner(line);
    while (scan.hasNextInt()) {
      int input = scan.nextInt();
      largest = Math.max(largest, input);
      smallest = Math.min(smallest, input);
    }
    return smallest;
  }

  public double getAverage(){
    double average=0.0;
    double total=0.0;
    int count=0;
    Scanner scan=new Scanner(line);
    while (scan.hasNext()) {// Finds the total and number of characters in a line
      total+=scan.nextInt();
      count++;
    }
    average=total/count;
    return average;
  }

  public String toString( ) {
    return line+"\n Average: "+getAverage()+"\n";
  }
}
