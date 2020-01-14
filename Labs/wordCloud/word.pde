public class Word {
  String word;
  int pos;
  Word(String word) {
    this.word = word;
    this.pos = 1;
  }

  Word(String word, int ocr) {
    this.word = word;
    this.pos = ocr;
  }

  void increment() {
    pos++;
  }

  String toString() {
    return (word + "   " + pos);
  }
}
