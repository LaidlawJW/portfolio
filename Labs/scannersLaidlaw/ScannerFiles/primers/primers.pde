import static java.lang.System.*;
import java.lang.Math;

boolean prime;

public class Prime
{
  private int number;

  public Prime() {
  }

  public Prime(int num) {
    number=num;
  }

  public void setPrime(int num) {
    number=num;
  }

  public boolean isPrime() {
    if (number%2==1) {
      prime=true;
    }
    
    if (number%2!=1) {
      prime=false;
    }
    return prime;
  }

  public String toString() {
    String result=number+" is prime? \n"+isPrime()+"\n";
    return result;
  }
}
