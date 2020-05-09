import java.util.Queue;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.PriorityQueue;

void setup() {
  PQTester test = new PQTester("one two three four five six seven");
  System.out.println(test);
  test.getMin();
  test.getNaturalOrder();

  test.setPQ("1 2 3 4 5 one two three four five");
  System.out.println(test);
  test.getMin();
  test.getNaturalOrder();

  test.setPQ("a p h j e f m c i d k l g n o b");
  System.out.println(test);
  test.getMin();
  test.getNaturalOrder();
}

public class PQTester {
  private Queue<String> pQueue;
  private ArrayList<String> list;
  
  public PQTester(String list) {
    pQueue = new PriorityQueue<String>();
    
    this.list = new ArrayList<String>();
    
    String[] str = list.split(" ");
    
    for (String s : str) {
      pQueue.offer(s);
      this.list.add(s);
    }
  }

  public void setPQ(String list) {
    String[] str = list.split(" ");
    
    this.list.clear();
    
    while (pQueue.isEmpty() == false){
      pQueue.remove();
    }
    
    for (String s : str) {
      pQueue.offer(s);
      this.list.add(s);
    }
  }

  public Object getMin() {
    return "getMin() - "+pQueue.peek();
  }

  public String getNaturalOrder() {
    String output="getNaturalOrder() - ";
    
    while (pQueue.isEmpty() == false){
      output+=pQueue.poll()+" ";
    }
    return output;
  }

  public String toString() {
    String output = "toString() - ";
    
    for (String x : list){
      output += x+" ";
    }
    return "\n"+output+"\n"+getMin()+"\n"+getNaturalOrder();
  }
}
