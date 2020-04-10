import java.util.Scanner;

void setup() {
  try {
    Scanner scan = new Scanner(new File("Desktop/Labs/scannersLaidlaw/Choppers/lineCount/lc.txt"));
    while (scan.hasNextLine()) {
      String s=scan.nextLine();
      LineCounter lc=new LineCounter(s);
      println(lc);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
