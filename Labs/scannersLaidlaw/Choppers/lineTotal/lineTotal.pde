import static java.lang.System.*;
import java.util.Scanner;

public class LineTotaller
{
   private String line;

  public LineTotaller(){
    setLine("");
  }

  public LineTotaller(String s){
    line=s;
  }

  public void setLine(String s){
    line=s;
  }

  public int getSum(){
    int total = 0;
    return total;
  }

  public String getLine(){
    return "";
  }

  public String toString(){
    return getLine();
  }
}
