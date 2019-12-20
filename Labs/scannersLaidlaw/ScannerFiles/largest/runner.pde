void setup() {
  try {
    Scanner scan = new Scanner(new File("Desktop/Labs/scannersLaidlaw/ScannerFiles/largest/line.txt"));
    int size = scan.nextInt();
    scan.nextLine();
    while (scan.hasNext()) {
      String s=scan.nextLine();
      TheLine line=new TheLine(s);
      println(line);
    }
  }
  catch(Exception e) {
    println(e);
  }
}
