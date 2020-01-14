public class WordList {
  public List<Word> myList;
  public WordList(String[] tokens) {
    
    myList = new ArrayList<Word>();
    boolean newWord = true;
    for (String s : tokens) {
      newWord = true;
      for (int i = 0; i < myList.size(); i++) {
        if (myList.get(i).word.equals(s)) {
          myList.get(i).increment();
          newWord = false;
        }
      }
      if (newWord) {
        myList.add(new Word(s));
      }
    }
    
    for (int i = 0; i < myList.size(); i++) {
      int j = i;
      while (j > 0 && myList.get(j).pos < myList.get(j-1).pos) {
        myList.set(j-1, myList.set(j, myList.get(j-1)));
        j--;
      }
    }
    
    int lengthRay = myList.size(); //removing excess 
    for (int i = lengthRay-1; i >= 0; i--) {
      boolean j = true;
      for (String x : tokensC) {
        if (j) {
          if (myList.get(i).word.equals(x)) {
            myList.remove(i);
            j = false;
          }
        }
      }
    }
  }
}
