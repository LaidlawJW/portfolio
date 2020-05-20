import static java.lang.System.*;

public class ListFunHouseTwo {

  private ListNode theList = null;

  public void add(Comparable data) {

    if (theList == null) {
      theList = new ListNode(data, null);
      theList.setNext(theList);
    } else {
      ListNode front = theList;
      ListNode back = theList;

      theList = theList.getNext();

      while (theList != front) {
        back = theList;
        theList = theList.getNext();
      }

      back.setNext(new ListNode(data, front));
    }
  }

  //this method will return the number of nodes present in list
  public int nodeCount() {
    int count = 1;
    ListNode current = theList;
    while (!(current.getNext() == null)) {
      count += 1;
      current = current.getNext();
    }
    return count;
  }

  //this method will create a new node with the same value as the first node and add this
  //new node at the front of the list.  Once finished, the first node will occur twice.
  public void doubleFirst() {
    theList.setNext(new ListNode(theList.getValue(), theList.getNext()));
  }

  //this method will create a new node with the same value as the last node and add this
  //new node at the end.  Once finished, the last node will occur twice.
  public void doubleLast() {
    ListNode front = theList;
    ListNode back = theList;
    front = front.getNext();
    while (!(front == theList)) {
      back = front;
      front = front.getNext();
    }
    back.setNext(new ListNode(back.getValue(), theList));
  }

  //method skipEveryOther will remove every other node
  public void skipEveryOther() {
    removeXthNode(2);
  }

  //this method will set the value of every xth node in the list
  public void setXthNode(int x, Comparable value) {
    ListNode front = theList;

    int count = 1;
    ListNode place = theList;
    front = front.getNext();

    while (!(front == theList)) {
      if (count % x == 0)
        place.setValue(value);
      place = place.getNext();
      count++;
    }
  }  

  //this method will remove every xth node in the list
  public void removeXthNode(int x) {

    int count = 1;
    ListNode prev = null;
    ListNode place = theList;

    ListNode front = theList;
    ListNode back = theList;

    theList = theList.getNext();
    while (!(theList != front)) {
      if (count % x == 0) {
        prev.setNext(place.getNext());
      }
      prev = place;
      place = place.getNext();
      count++;

      back = theList;
      theList = theList.getNext();
    }
  }    

  //this method will return a String containing the entire list
  public String toString() {
    String output = "";
    String result = "";
    ListNode front = theList;

    while (front.getNext() != theList) {
      output += (String)front.getValue() + "  ";
      front = front.getNext();
    }

    output += front.getValue();
    return output;
  }
}
