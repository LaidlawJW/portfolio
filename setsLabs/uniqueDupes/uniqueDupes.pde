import static java.lang.System.*;
import java.util.*;

void setup() {
  String things1 = "a b c d e f g h a b c d e f g h i j k";
  println("Original: "+things1);
  println("Uniques: "+UniquesDupes.getUniques(things1));
  println("Dupes: "+UniquesDupes.getDupes(things1));
  println("");
  
  String things2 = "one two three one two three six seven one two";
  println("Original: "+things2);
  println("Uniques: "+UniquesDupes.getUniques(things2));
  println("Dupes: "+UniquesDupes.getDupes(things2));
  println("");
  
  String things3 = "1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 6";
  println("Original: "+things3);
  println("Uniques: "+UniquesDupes.getUniques(things3));
  println("Dupes: "+UniquesDupes.getDupes(things3));
  println("");
}
