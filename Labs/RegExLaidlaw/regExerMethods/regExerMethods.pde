import java.util.Arrays;
import java.util.regex.*;

void setup() {
  String line = "Hello I am nine syllables long. And it is great!";
  String[] split=line.split(" ");
  println(Arrays.toString(split));
  println("Words: "+countWords(split));
  println("Vowels: "+countVowels(line));
  println("Syllables: "+countSyllables(line));
  println("Sentences: "+countSentences(line));
}

int countWords(String[] s) {
  return s.length;
}

int countVowels(String s) {
  String[] vowels = s.split("[aeiouyAEIOUY]");
  return vowels.length-1;
}

int countSyllables(String s) {
  String[] syllables = s.split("[e]");
  String[] vowels = s.split("[aeiouyAEIOUY]");
  return vowels.length - syllables.length+2;
}

int countSentences(String s){
  String[] sentences = s.split("[^?!.][?!.]");
  return sentences.length;
}
