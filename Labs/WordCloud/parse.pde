public class StringParser {

  public StringParser() {
  }

  void setup() {
    size(400, 200);
    wrd=loadStrings("data/republic.txt");
    s=join(wrd, " ");
    words=splitTokens(s, ",.!?- ");
    wList=new List(words);
  }

  int countVowels(String s) {
    String[] vowels = s.split("[aeiouyAEIOUY]");
    vowelNum=vowels.length-1;
    return vowels.length-1;
  }

  int countWords(String[] wrd) {
    wordCount=s.length();
    return s.length();
  }

  int countSentences(String s) {
    String[] sentences = s.split("\\.\\s");
    return sentences.length;
  }

  int countSyllables(String s) {
    String[] exceptions = s.split("[e][\\s]");
    syllables=countVowels(s)-exceptions.length;
    return countVowels(s)-exceptions.length;
  }

  double getFlesch(String s) {
    fleschScore=206.835-(1.015*(countWords(wrd)/countSentences(s)))-(84.6*(countSyllables(s)/countWords(wrd)));
    return fleschScore;
  }

  int getGradeLevel(String s) {//Gunning Fog method
    if (getFlesch(s)>=90.0) {
      gradeLevel=5;
    } else if (getFlesch(s)>=80.0 && getFlesch(s)<90.0) {
      gradeLevel=6;
    } else if (getFlesch(s)>=70.0 && getFlesch(s)<80.0) {
      gradeLevel=7;
    } else if (getFlesch(s)>=60.0 && getFlesch(s)<70.0) {// 8th and 9th grade
      gradeLevel=8;
      gradeLevel2=9;
    } else if (getFlesch(s)>=50.0 && getFlesch(s)<60.0) {// 10th to 12th grade
      gradeLevel=10;
      gradeLevel2=12;
    }
    return gradeLevel;
    return gradeLevel2;
  }

  String getNoNumLevel(String s) {
    if (getFlesch(s)>=30.0 && getFlesch(s)<50.0) {
      noNumLevel="College";
    } else if (getFlesch(s)>=0.0 && getFlesch(s)<30.0) {
      noNumLevel="College graduate";
    }
  }
}
