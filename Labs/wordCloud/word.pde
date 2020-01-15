public class Word{
  String word;
  int ocr;
  
  Word(String word){
    this.word = word;
    this.ocr = 1;
  }
  
  Word(String word, int ocr){
    this.word = word;
    this.ocr = ocr;
  }
  
  void increment(){
    ocr++;
  }
  
  String toString(){
    return (word + "   " + ocr);
  }
}
