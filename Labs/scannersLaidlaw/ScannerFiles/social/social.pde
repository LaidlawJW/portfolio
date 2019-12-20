import static java.lang.System.*;
public class Social
{
  private String socialNum;

  public Social() {
  }

  public Social(String soc) {
    socialNum=soc;
  }

  public void setSocial(String soc) {
    socialNum=soc;
  }

  public int getSum() {
    int total=0;
    Scanner scan=new Scanner(socialNum);
    scan.useDelimiter("-");
    while (scan.hasNext()) {
      total+=scan.nextInt();
    }
    return total;
  }

  public String toString() {
    return socialNum+"\n total: "+getSum()+"\n";
  }
}
