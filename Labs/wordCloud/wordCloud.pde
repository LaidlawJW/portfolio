import java.util.*;

PFont font;

String [] fileContents;
String rawText;
String [] tokens;
WordList wList;
String [] fileContentsC;
String rawTextC;
String [] tokensC;

void setup() {// Eliminates common english words
  font = createFont("data/PressStart2P.ttf", 32);
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
  frameRate(60);
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
  //ArrayList<int[]> positions = new ArrayList<int[]>();
  int numWordsShown = 50;
  float wordHeight = 100/(wList.myList.get(wList.myList.size()-1).pos * 1.0 - wList.myList.get(wList.myList.size()-1-numWordsShown).pos * 1.0);
  for (int i = wList.myList.size()-1; i > wList.myList.size()-1-numWordsShown; i--) {
    println(wList.myList.get(i).toString());
    //float angle = random(0,TWO_PI);
    //float posX = width/2;
    //float posY = height/2;
    float posX = random(0, width);
    float posY = random(0, height);
    float WHeight = ((wList.myList.get(i).pos * 1.0 - wList.myList.get(wList.myList.size()-1-numWordsShown).pos * 1.0) * wordHeight) + 10;
    float WWidth = WHeight * wList.myList.get(i).word.length();
    //boolean goodPos = false;
    //while(!goodPos){
    //  for(int j = 0; j < positions.size();j++){
    //    if(){//(posX - (WWidth/2) >= positions.get(j)[0]-positions.get(j)[1] && posX - (WWidth/2) <= positions.get(j)[0]+positions.get(j)[1] && posY >= positions.get(j)[0]-positions.get(j)[2] && posY <= positions.get(j)[0]+positions.get(j)[2])

    //    }
    //  }
    //}
    fill(255, 255, 255);
    textSize(WHeight);
    text(wList.myList.get(i).word, posX, posY, WWidth*100, WHeight*100);
  }
  println(wList.myList.size());
  //new WordCram(this)
  //.withColors(color(30), color(110), color(random(255), 240, 200))
  //.sizedByWeight(5, 150)
  //.withFont("Copse")
  //.drawAll();
}
