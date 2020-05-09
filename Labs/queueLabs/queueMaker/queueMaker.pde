import java.util.ArrayList;
import static java.lang.System.*;

void setup() {
  IntQueue test = new IntQueue();
  test.add(5);
  test.add(7);
  test.add(9);
  System.out.println(test);
  System.out.println(test.isEmpty());
  System.out.println(test.remove());
  System.out.println(test.peek());
  System.out.println(test.remove());
  System.out.println(test.remove());
  System.out.println(test.isEmpty());
  System.out.println(test);
}

public class IntQueue {
  //pick your storage for the queue
  //you can use the an array or an ArrayList

  //option 1
  //private int[] rayOfInts;
  //private int numInts;

  //option 2
  private ArrayList<Integer> listOfInts;

  public IntQueue() {
    listOfInts = new ArrayList<Integer>();
  }

  public void add(int item) {
    listOfInts.add(listOfInts.size(), item);
  }

  public int remove() {
    int head = listOfInts.get(0);
    listOfInts.remove(0);
    return head;
  }

  public boolean isEmpty() {
    return listOfInts.isEmpty();
  }

  public int peek() {
    int head = listOfInts.get(0);
    return head;
  }

  public String toString() {
    return listOfInts.toString();
  }
}
