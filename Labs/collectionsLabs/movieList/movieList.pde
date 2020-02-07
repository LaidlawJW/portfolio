import java.util.ArrayList;
import java.util.Arrays;
import java.util.ListIterator;
import java.util.List;
import java.util.Collections;
import java.util.Scanner;

public class MovieList {

  private int count;
  private String [] movies;
  private String [] keyWords;
  private int [] reviewNums;// \d for regEx nums

  List movieList;

  public MovieList() {
    movieList = new ArrayList<Movie>();
  }

  public void loadMovies() {
    movies=loadStrings("reviews.txt");
    
    for (String s : movies) {
      Scanner scan = new Scanner(s);
      movieList.add(new Movie(scan.nextInt(), scan.nextLine()));
      scan.close();
    }
    count = movieList.size();
  }

  public int getCount() {
    return this.count;
  }

  public double getAverageScore() {
    double average=0.0;
    return average;
  }

  public void SortMoviesByCount() {
    Collections.sort(movieList);
  }

  public String overallComment() {
    
    String result="";

    if (getAverageScore()>=3.5) {
      result="This movie is superb.";
    }

    if (getAverageScore()>=2.5 && getAverageScore()<3.5) {
      result="This movie is just ok.";
    }

    if (getAverageScore()>=1.5 && getAverageScore()<2.5) {
      result="This movie is average.";
    }

    if (getAverageScore()>=0 && getAverageScore()<1.5) {
      result="This movie is awful.";
    }
    return result;
  }

  public String toString() {
    ListIterator<String>it=movieList.listIterator();
    while (it.hasNext()) {
      return movieList.toString();
    }
    return movieList.toString();
  }
}
