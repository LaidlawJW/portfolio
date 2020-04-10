import java.util.Scanner;

void setup() {
  try {
    Scanner scan = new Scanner(new File("Desktop/Labs/scannersLaidlaw/ScannerFiles/social/social.txt"));
    int num=scan.nextInt();
    while (scan.hasNextLine()) {
      String s=scan.nextLine();
      Social soc=new Social(s);
      println(soc);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
