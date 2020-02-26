import java.io.File;
import java.io.IOException;
import java.util.Scanner;
import static java.lang.System.*;

void setup() {

  String nums1="1 5 9 4 6 8 12";
  println("Set: "+nums1);
  println("Evens: "+OddEvenSets.getEvens(nums1));
  println("Odds: "+OddEvenSets.getOdds(nums1));
  println("");

  String nums2="3 5 7 17 29 4 6 56 72";
  println("Set: "+nums2);
  println("Evens: "+OddEvenSets.getEvens(nums2));
  println("Odds: "+OddEvenSets.getOdds(nums2));
  println("");

  String nums3="3 6 12 2 28 6";
  println("Set: "+nums3);
  println("Evens: "+OddEvenSets.getEvens(nums3));
  println("Odds: "+OddEvenSets.getOdds(nums3));
  println("");

  String nums4="4 4 4 4 4 4 4 4";
  println("Set: "+nums4);
  println("Evens: "+OddEvenSets.getEvens(nums4));
  println("Odds: "+OddEvenSets.getOdds(nums4));
  println("");

  String nums5="1 1 1 1 1 1 1 1";
  println("Set: "+nums5);
  println("Evens: "+OddEvenSets.getEvens(nums5));
  println("Odds: "+OddEvenSets.getOdds(nums5));
  println("");

  String nums6="1 2 3 4 5 6 7 8 9";
  println("Set: "+nums6);
  println("Evens: "+OddEvenSets.getEvens(nums6));
  println("Odds: "+OddEvenSets.getOdds(nums6));
}
