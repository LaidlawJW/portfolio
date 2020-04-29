import java.util.Stack;
import java.util.Scanner;

void setup() {

  try {
    
    Stack<String>circus = new Stack<String>();
    
    // A different user of this program will likely have to use a different path and syntax
    Scanner scan = new Scanner(new File("C:\\Users\\justi\\Desktop\\lab2\\circus.txt")); 
    
    int quant = 0;// The quantity of names to get
    int set = 1;
    int rounds = 4;// for the three name sets (4-1)


    while (set<rounds) {
      println("SET "+set);
      set++;
      quant = scan.nextInt(); //Changes the number of names to get once a new round starts. This prevents the quantity numbers from showing up in the end

      for (int i = 0; i<quant; i++) {

        String name = scan.next();

        if (i%2==0) {
          println(name);
        } else {
          circus.push(name);
        }
      }

      while (circus.isEmpty() == false) {
        println(circus.pop());
      }
      print("\n");
    }
  }

  catch(Exception excep) {
    println(excep);
  }
}
