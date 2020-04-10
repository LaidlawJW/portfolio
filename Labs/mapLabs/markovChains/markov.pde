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

  //forms the mapping of the text's words
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

  String generateText(String str) {
    String newString1 = "";
    String newString2 = "";
    String result = "";
    int randomIndex = 0;
    int randomIndex2 = 0;

    if (theMap.containsKey(str)) {// assigns random indexes to the arrayLists in the map
      randomIndex = getRandomIndex(str);
      randomIndex2 = getRandomIndex(str);
      newString1 = str + " " + theMap.get(str).get(randomIndex) + " ";
      newString2 = theMap.get(str).get(randomIndex2);
      result = newString1 + newString2;

      //Removes duplicate words
      if (theMap.get(str).get(randomIndex).equals(theMap.get(str).get(randomIndex2))) {
        return newString1;
      }
    }
    return result;
  }

  //Gets a random number from zero to the arrayList size number
  int getRandomIndex(String s) {
    int randomI = (int)(Math.random()*theMap.get(s).size());
    return randomI;
  }

  //Prints the map while creating a new line for every entry
  void printMap() {
    println(theMap.toString().replaceAll("],", "]\n"));
  }

  public String toString() {
    return wordList.toString();
  }
}
