import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {
  SpanishToEnglish span = new SpanishToEnglish();
  String[] words = loadStrings("translate.txt");
  String[] example = loadStrings("example.txt");

  for (String s : words) {
    span.putEntry(s);
  }

  for (String t : example) {
    println(span.translate(t)+" ");
  }
}
