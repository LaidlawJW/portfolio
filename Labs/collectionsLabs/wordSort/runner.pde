import java.util.Scanner;
import java.util.Arrays;
import java.lang.System.*;
import java.util.Collections;

public class WordRunner {
  String names1 [] = loadStrings("words.txt");
  Scanner scan = new Scanner(names1);

  Word[] words1 = new Word[10];
  int i = 0;
  while (scan.hasNext()) {
    words1[i] = new Word(scan.next());
    i++;
  }

  System.out.println("Before sorted: ");
  for (Word word : words1) {
    System.out.println(word);
  }
  System.out.println();

  System.out.println("After sorted: ");
  Arrays.sort(words1);
  for (Word wrd : words1) {
    System.out.println(wrd);
  }
}
