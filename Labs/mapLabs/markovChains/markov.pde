import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
import java.util.TreeMap;

class MarkovChain implements Markov {
  List <String> wordList;
  Map<String, ArrayList<String>> theMap;

  public MarkovChain() {
    wordList = new ArrayList<String>();
    theMap = new TreeMap<String, ArrayList<String>>();
  }

  //look through the str of words
  //store the first word in a variable called currentWord
  //store the second word in a variable called nextWord
  //add to map by
  //checking to see of currentWord is in theMap
  //if it is not, put it in the map and instantiate your ArrayList
  //if it is get(currentWord).add(nextWord);
  void trainMap(String [] str) {
    for (int i = 0; i<str.length-1; i++) {
      String currentWord = str[i];
      String nextWord = str[i+1];

      if (theMap.get(currentWord)==null) {
        theMap.put(currentWord, new ArrayList<String>());
      }
      theMap.get(currentWord).add(nextWord);
    }
  }

  // initialize a new String called newString
  // create two random index variables called randomIndex and randomIndex2
  // if (map.containsKey(str)) {
  // call getRandomIndex(str) and store it in randomIndex
  // call getRandomIndex(str) and store it in randomIndex2
  // then build your newString by adding str_ myMap.get(randomIndex) and randomIndex2
  String generateText(String str) {
    String newString = "";
    int randomIndex = 0;
    int randomIndex2 = 0;

    if (theMap.containsKey(str)) {
      randomIndex = getRandomIndex(str);
      randomIndex2 = getRandomIndex(str);
      newString += str + " " + theMap.get(str).get(randomIndex) + " ";
      newString += theMap.get(str).get(randomIndex2);
    }
    return newString;
  }

  int getRandomIndex(String s) {
    int randomI = (int)(Math.random()*theMap.get(s).size());
    return randomI;
  }

  void printMap() {
    println(theMap.toString().replaceAll("],", "]\n"));
  }

  public String toString() {
    return wordList.toString();
  }
}
