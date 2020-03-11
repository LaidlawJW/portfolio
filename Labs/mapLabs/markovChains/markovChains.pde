void setup() {
  MarkovChain mc=new MarkovChain();
  String [] str=loadStrings("fish.txt");
  String allText=join(str, " ");
  String [] cleanText=allText.replaceAll("[^a-zA-Z ]", "").toLowerCase().split("\\s+");//removes punct before splitting
  mc.trainMap(cleanText);

  for (String s : cleanText) {
    mc.generateText(s);
    //println(mc.generateText(s));
    //println(mc.generateText2(2));
  }
  mc.printMap();
}

interface Markov {
  void trainMap(String [] s);
  String generateText(String s);
}
