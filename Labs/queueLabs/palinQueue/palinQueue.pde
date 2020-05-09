import java.util.Queue;
import java.util.Stack;
import java.util.Arrays;
import java.util.Scanner;
import java.util.ArrayList;
import java.util.LinkedList;

void setup() {
  PalinList test = new PalinList("one two three two one");
  System.out.println(test);
  test.isPalin();

  test.setList("1 2 3 4 5 one two three four five");
  System.out.println(test);
  test.isPalin();

  test.setList("a b c d e f g x y z g f h");
  System.out.println(test);
  test.isPalin();

  test.setList("racecar is racecar");
  System.out.println(test);
  test.isPalin();

  test.setList("1 2 3 a b c c b a 3 2 1");
  System.out.println(test);
  test.isPalin();

  test.setList("chicken is a chicken");
  System.out.println(test);
  test.isPalin();
}

public class PalinList {
  private Queue<String> queue;
  private Stack<String> stack;

  public PalinList() {
    setList("");
  }

  public PalinList(String list) {
    setList(list);
  }

  public void setList(String list) {
    stack = new Stack<String>();
    queue = new LinkedList <String>();

    Scanner scan1 = new Scanner(list);
    Scanner scan2 = new Scanner(list);

    while (scan1.hasNext()) {
      stack.push(scan1.next());
    }

    while (scan2.hasNext()) {
      queue.add(scan2.next());
    }
  }

  public boolean isPalin() {
    boolean check = true;

    while (queue.size()>0) {
      if (queue.remove().equals(stack.pop())) {
        check = true;
      } else {
        check = false;
        break;
      }
    }
    return check;
  }

  public String toString() {
    return "\n"+queue+" is a palindrome? "+isPalin();
  }
}
