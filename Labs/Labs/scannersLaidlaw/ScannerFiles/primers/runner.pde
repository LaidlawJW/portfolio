import java.io.IOException;
import java.io.File;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {
  Scanner scan;

  try {
    scan=new Scanner(new File("Desktop/Labs/scannersLaidlaw/ScannerFiles/primers/prime.txt"));
    int limit=scan.nextInt();
    scan.nextLine();

    for (int i=0; i<limit; i++) {
      Prime oe=new Prime(scan.nextInt());
      println(oe);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
