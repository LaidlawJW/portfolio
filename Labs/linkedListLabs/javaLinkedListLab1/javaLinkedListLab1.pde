import java.util.LinkedList;
import static java.lang.System.*;

void setup() {
  JavaLinkedList test = new JavaLinkedList(new int[]{4, 5, 6, 7, 8, 9, 10, 11, 12, 13});
  out.println(test);

  test = new JavaLinkedList(new int[]{24, 75, 86, 37, 82, 94, 111, 82, 43});
  out.println(test);

  test = new JavaLinkedList(new int[]{0, 4, 5, 2, 1, 4, 6});
  out.println(test);
}

public class JavaLinkedList {
  private LinkedList<Integer> list;

  public JavaLinkedList() {
    list = new LinkedList<Integer>();
  }

  public JavaLinkedList(int[] nums) {
    list = new LinkedList<Integer>();
    for (int num : nums) {
      list.add(num);
    }
  }

  public double getSum() {
    double total=0.0;

    for (int item : list) {
      total += (double)(item);
    }

    return total;
  }

  public double getAvg() {
    int numOfItems = 0;
    double avg = 0.0;

    for (int item : list) {
      numOfItems++;
    }

    avg = getSum()/numOfItems;
    return avg;
  }

  public int getLargest() {
    int largest = list.get(0);

    for (int i = 0; i<list.size()-1; i++) {
      if (list.get(i)<list.get(i+1)) {
        largest = list.get(i+1);
      }
    }
    return largest;
  }

  public int getSmallest() {
    int smallest = list.get(0);

    for (int i = list.size(); i==0; i--) {
      if (list.get(i)>list.get(i+1)||list.get(i)==list.get(i+1)) {
        smallest = list.get(i);
      }
    }
    return smallest;
  }

  public String toString() {
    String output = "";
    output = "\nSum: "+getSum()+"\nAverage: "+getAvg()+"\nSmallest: "+getSmallest()+"\nLargest: "+getLargest();
    return output;
  }
}
