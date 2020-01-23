public class Word{
  String word;
  int r;
  
  Word(String word){
    this.word = word;
    this.r = 1;
  }
  
  Word(String word, int r){
    this.word = word;
    this.r = r;
  }
  
  void increment(){
    r++;
  }
  
  String toString(){
    return (word + "   " + r);
  }
}
