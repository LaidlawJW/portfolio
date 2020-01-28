import java.util.Scanner;
import java.util.Arrays;
import java.lang.System.*;
import java.util.Collections;
import java.util.List;

void setup() {
  String words1 [] = loadStrings("words.txt");
  List<Word>myList=new ArrayList<Word>();

  for (String w : words1) {
    Scanner scan=new Scanner(w);
    myList.add(new Word(scan.nextLine()));
  }


  System.out.println("Before sorted: ");
  for (String w : words1) {
    System.out.println(w);
  }
  System.out.println();

  System.out.println("After sorted: ");
  Collections.sort(myList);
  for (Word wrd : words1) {
    System.out.println(wrd);
  }
}
