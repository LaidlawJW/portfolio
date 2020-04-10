import static java.lang.System.*;

public class OddOrEven{
  private int number;

  public OddOrEven() {
  }

  public OddOrEven(int num) {
    number=num;
  }

  public void setNum(int num) {
    number=num;
  }

  public boolean isOdd() {
    return false;
  }

  public String toString() {
    if (number%2==1) {
      return number+" is odd.\n\n";
    } else {
      return number+" is even.\n\n";
    }
  }
}
