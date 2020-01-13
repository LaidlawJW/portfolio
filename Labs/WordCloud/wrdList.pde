class List {

  public List() {
  }

  public ArrayList<Word> myList = new ArrayList<Word>(1);

  public List(String []tokens) {
    myList=new ArrayList<Word>();
    for (String s : tokens) {
      myList.add(new Word(s));
    }
  }

  ///////////////split (uses regex)
  String [] fileContents ;
  String rawText;
  String [] tokens;
  List wList;

  void setup() {
    size(400, 200);
    fileContents = loadStrings("data/republic.txt");
    rawText = join(fileContents, " ");
    rawText = rawText.toLowerCase();
    tokens=rawText.split("[^\\w]+");
    wList=new List(tokens);
  }

  public void addWord(String word) {
    Word w=getOneWord(word);
    if (w!=null) {
      s.setAmount(w.getAmount()+1);
    } else {
      myList.add(new Word(word, (int)(Math.random()*width), (int)(Math.random()*height));
    }
  }

  public Word getOneWord(String word) {// Removes duplicates
    for (Word w : myList) {
      if (w!=null&&word.equals(w.getName())) {
        return w;
      }
    }
    return null;
  }
}
