import java.util.List;
import java.util.Scanner;
import java.util.Collections;

void setup(){
  String [] str=loadStrings("persons.txt");
  List<Person>myList=new ArrayList<Person>();
  
  for(String s: str){
    Scanner scan=new Scanner(s);
    myList.add(new Person(scan.nextInt(), scan.nextInt(), scan.nextInt(), scan.next()));
  }
  Collections.sort(myList);
}
