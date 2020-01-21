fileContents = [];
var rawText;
tokens = [];
WordList wList;
fileContentsC = [];
var rawTextC;
var [] tokensC;

var font;

function preLoad() {
    font = loadFont(courierRegular.ttf)
    fileContents = loadStrings("cmmnWords.txt");
    rawText = join(fileContents, " ");
    rawText = rawText.toLowerCase();
    tokens = rawText.split("[^\w]+");
    tokens = fileContents;
}

function setup() {
    createCanvas(1600, 800);
    background(0);

    do {
        fileContents = loadStrings("ion.txt");
    } while (fileContents == null);

    rawText = join(fileContents, " ");
    rawText = rawText.toLowerCase();
    tokens = rawText.split("[^\\w]+");
    println(tokens.length);

    this.wList = new WordList(tokens);
    println(wList.myList.size());
    textAlign(CENTER, CENTER);
    rectMode(CENTER);
    draw();
    frameRate(30);
}

function draw() {

    do {
        fileContents = loadStrings("data/ion.txt");
    } while (fileContents == null);

    rawText = join(fileContents, " ");
    rawText = rawText.toLowerCase();
    tokens = rawText.split("[^\\w]+");
    println(tokens.length);
    wList = new WordList(tokens);
    println(wList.myList.size());

    background(0);
    fill(255);

    var numWordsShown = 50;

    var wordHeight = 100 / (wList.myList.get(wList.myList.size() - 1).ocr * 1.0 - wList.myList.get(wList.myList.size() - 1 - this.numWordsShown).ocr * 1.0);

    for (int i = wList.myList.size() - 1; i > wList.myList.size() - 1 - this.numWordsShown; i--) {

        println(wList.myList.get(i).toString());

        var posX = random(mouseX) + 400;
        var posY = random(mouseY) + 100;

        var WHeight = ((wList.myList.get(i).ocr * 1.0 - wList.myList.get(wList.myList.size() - 1 - this.numWordsShown).ocr * 1.0) * this.wordHeight) + 10;
        var WWidth = this.WHeight * wList.myList.get(i).word.length();

        fill(255, 255, 255);
        textSize(WHeight);
        text(wList.myList.get(i).word, this.posX, this.posY, this.WWidth * 100, this.WHeight * 100);
        countWords(rawTextC);
        fill(255, 0, 0);
        textSize(20);
        text("Book: 'Ion' by Plato. Words: " + countWords(rawText) + ". Vowels: " + countVowels(rawText) + ", Syllables: " + countSyllables(rawText) + ", Sentences: " + countSentences(rawText) + ", \nFlesch score: " + getFleschScore(rawText) + ", Grade level: " + getGradeLvl(rawText) + ".", 800, 740);
    }
    println(wList.myList.size());
}

//-------------------------------------------------------------------------------

public class WordList {
    public List < Word > myList;
    constructor(String[] tokens) {
        this.myList = new ArrayList < Word > ();
        var newWord = true;
        for (var s: tokens) {
            this.newWord = true;
            for (var i = 0; i < myList.size(); i++) {
                if (myList.get(i).word.equals(s)) {
                    myList.get(i).increment();
                    this.newWord = false;
                }
            }

            if (this.newWord) {
                myList.add(new Word(s));
            }
        }

        for (var i = 0; i < myList.size(); i++) {
            var j = i;
            while (this.j > 0 && myList.get(this.j).ocr < myList.get(this.j - 1).ocr) {
                myList.set(this.j - 1, myList.set(this.j, myList.get(this.j - 1)));
                this.j--;
            }
        }

        var lengthRay = myList.size(); //removing excess 
        for (var i = lengthRay - 1; i >= 0; i--) {
            var j = true;
            for (var x: tokensC) {
                if (this.j) {
                    if (myList.get(i).word.equals(x)) {
                        myList.remove(i);
                        this.j = false;
                    }
                }
            }
        }
    }
}

//------------------------------------------------------------------------------

public class Word {
    var word;
    var ocr;

    constructor (String word) {
        this.word = word;
        this.ocr = 1;
    }

    constructor (String word, int ocr) {
        this.word = word;
        this.ocr = ocr;
    }

    function increment() {
        this.ocr++;
    }

    function toString() {
        return (this.word + "   " + this.ocr);
    }
}

//--------------------------------------------------------------------------------------

function countWords(String s) {
    var [] split = s.split("\\s");
    return split.length;
}

function countVowels(String s) {
    String[] vowels = s.split("[aeiouyAEIOUY]");
    return vowels.length - 1;
}

function countSyllables(String s) {
    var syllables = s.length() > 2 && s.substring(s.length() - 2).equals("e") ? 1 : 0;
    var [] vowels = s.split("[aeiouyAEIOUY]+");
    var [] exceptions = s.split("[a-z][e][\\s]");
    return vowels.length - syllables + exceptions.length;
}

function countSentences(String s) {
    var [] sentences = s.split("[.!?]+");
    return sentences.length;
}

function getFleschScore(String s) {
    return 206.835 - (1.015 * (countWords(s) / countSentences(s))) - (84.6 * (countSyllables(s) / countWords(s)));
}

function getGradeLvl(String s) {
    var score = getFleschScore(s);
    return score < 30 ? "College Grad" : score < 50 ? "College" : score < 60 ? "10th to 12th" : score < 70 ? "8th to 9th" : this.score < 80 ? "7th" : score < 90 ? "6th" : score < 100 ? "5th" : "Too easy";
}
