import java.util.Scanner;

void setup() {
  Scanner scan;

  try {
    scan=new Scanner(new File("Desktop/Labs/scannersLaidlaw/ScannerFiles/oddEven/oe.txt"));
    int num=scan.nextInt();
    scan.nextLine();

    for (int i=0; i<num; i++) {
      OddOrEven oe=new OddOrEven(scan.nextInt());
      println(oe);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
