import java.util.*;
import java.util.regex.*;

PFont font;

String [] fileContents;
String rawText;
String [] tokens;
WordList wList;
String [] fileContentsC;
String rawTextC;
String [] tokensC;

void setup() {
  font = createFont("data/courierRegular.ttf", 32);
  textFont(font);
  size(1600, 800);
  fileContents = loadStrings("data/cmmnWords.txt");
  rawTextC = join(fileContents, " ");
  rawTextC = rawTextC.toLowerCase();
  tokensC = rawTextC.split("[^\\w]+");
  println(tokensC.length);

  do {
    fileContents = loadStrings("data/ion.txt");
  } while (fileContents == null);

  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");   
  println(tokens.length);

  wList=new WordList(tokens);
  println(wList.myList.size());
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  draw();
  frameRate(30);
}

void draw() {

  do {
    fileContents = loadStrings("data/ion.txt");
  } while (fileContents == null);

  rawText = join(fileContents, " ");
  rawText = rawText.toLowerCase();
  tokens=rawText.split("[^\\w]+");   
  println(tokens.length);
  wList=new WordList(tokens);
  println(wList.myList.size());

  background(0);
  fill(255);

  int numWordsShown = 50;

  float wordHeight = 100/(wList.myList.get(wList.myList.size()-1).ocr * 1.0 - wList.myList.get(wList.myList.size()-1-numWordsShown).ocr * 1.0);

  for (int i = wList.myList.size()-1; i > wList.myList.size()-1-numWordsShown; i--) {

    println(wList.myList.get(i).toString());

    float posX = random(mouseX)+400;
    float posY = random(mouseY)+100;

    float WHeight = ((wList.myList.get(i).ocr * 1.0 - wList.myList.get(wList.myList.size()-1-numWordsShown).ocr * 1.0) * wordHeight) + 10;
    float WWidth = WHeight * wList.myList.get(i).word.length();

    fill(255, 255, 255);
    textSize(WHeight);
    text(wList.myList.get(i).word, posX, posY, WWidth*100, WHeight*100);
    countWords(rawTextC);
    fill(255, 0, 0);
    textSize(20);
    text("Book: 'Ion' by Plato. Words: "+countWords(rawText)+". Vowels: "+countVowels(rawText)+", Syllables: "+countSyllables(rawText)+", Sentences: "+countSentences(rawText)+", \nFlesch score: "+getFleschScore(rawText)+", Grade level: "+getGradeLvl(rawText)+".", 800, 740);
  }
  println(wList.myList.size());
}

int countWords(String s) {
  String []split = s.split("\\s");
  return split.length;
}

int countVowels(String s) {
  String [] vowels = s.split("[aeiouyAEIOUY]");
  return vowels.length - 1;
}

int countSyllables(String s) {
  int syllables = s.length() > 2 && s.substring(s.length()-2).equals("e") ? 1 : 0;
  String [] vowels = s.split("[aeiouyAEIOUY]+");
  String [] exceptions = s.split("[a-z][e][\\s]");
  return vowels.length - syllables + exceptions.length;
}

int countSentences(String s) {
  String[] sentences = s.split("[.!?]+");
  return sentences.length;
}

float getFleschScore(String s) {
  return 206.835 - (1.015 * (countWords(s)/countSentences(s))) - (84.6 * (countSyllables(s)/countWords(s)));
}

String getGradeLvl(String s) {
  int score = (int) getFleschScore(s);
  return score < 30 ? "College Grad" : score < 50 ? "College" : score < 60 ? "10th to 12th" : score < 70 ? "8th to 9th" : score < 80 ? "7th" : score < 90 ? "6th" : score < 100 ? "5th" : "Too easy";
}
