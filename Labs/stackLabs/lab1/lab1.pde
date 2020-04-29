import java.util.Stack;
import java.util.Scanner;

void setup() {
  StackTester test = new StackTester("a b c d e f g h i");
  System.out.println(test);
  test.popEmAll();

  test.setStack("1 2 3 4 5 6 7 8 9 10");
  System.out.println(test);
  test.popEmAll();

  test.setStack("# $ % ^ * ( ) ) _");
  System.out.println(test);
  test.popEmAll();
}
