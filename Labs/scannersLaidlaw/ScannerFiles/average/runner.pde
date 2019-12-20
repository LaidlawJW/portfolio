import java.util.Scanner;
import static java.lang.System.*;
import java.io.IOException;
import java.io.File;

void setup() {
  Scanner scan;

  try {
    scan=new Scanner(new File("Desktop/Labs/scannersLaidlaw/ScannerFiles/average/average.txt"));
    int num=scan.nextInt();
    scan.nextLine();

    for (int i=0; i<num; i++) {
      Average oe=new Average(scan.nextLine());
      println(oe);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
