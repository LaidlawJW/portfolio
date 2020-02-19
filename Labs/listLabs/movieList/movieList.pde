//This tab also contains the runner in order to make size() work.
import java.util.*;

class MovieList {
  private ArrayList<Movie> movieList = new ArrayList<Movie>();
  private int reviewCount;

  public MovieList(ArrayList<Movie> m) {
    movieList = m;
  }

  public int loadMovies() {
    return reviewCount;
  }

  public int getCount() {
    return reviewCount;
  }

  public double getAverageScore() {
    double average = 0.0;
    for (int i=0; i<movieList.size(); i++) {
      average+=movieList.get(i).getRating();
    }
    return (double)(average/movieList.size());
  }

  public void SortMoviesByCount() {
    Collections.sort(movieList);
  }

  public String overallComment() {
    int currentRating = 0;
    String comment = "";
    for (int i=0; i<movieList.size(); i++) {
      currentRating=movieList.get(i).getRating();
      if (currentRating==4) {
        comment = "This movie is superb.";
      }

      if (currentRating==3) {
        comment = "This movie is decent.";
      }

      if (currentRating==2) {
        comment = "This movie is average.";
      }

      if (currentRating==1) {
        comment = "This movie is pretty bad.";
      }

      if (currentRating==0) {
        comment = "This movie isn't worth your time.";
      }
    }
    return comment;
  }

  public String addedNums() {
    int currentRating=0;
    String result = "";

    int zeros = 0;
    int ones = 0;
    int twos = 0;
    int threes = 0;
    int fours = 0;

    for (int i=0; i<movieList.size(); i++) {
      currentRating=movieList.get(i).getRating();
      if (currentRating==4) {
        fours++;
      }

      if (currentRating==3) {
        threes++;
      }

      if (currentRating==2) {
        twos++;
      }

      if (currentRating==1) {
        ones++;
      }

      if (currentRating==0) {
        zeros++;
      }
    }
    result = "Zeros: "+zeros+" \nOnes: "+ones+" \nTwos: "+twos+" \nThrees: "+threes+" \nFours: "+fours;
    return result;
  }

  public String toString() {
    String finish="";
    Iterator it=movieList.iterator();
    while (it.hasNext()) {
      finish+=it.next();
    }
    return finish;
  }
}
//--------------------------------------------------------------------
void setup() {
  size(800, 600);
  String[] reviews = loadStrings("reviews.txt");
  ArrayList<Movie> movies = new ArrayList<Movie>();
  for (String i : reviews) {
    Scanner scan=new Scanner(i);
    movies.add(new Movie(scan.nextInt(), scan.nextLine()));
  }

  int reviewCount = movies.size();

  MovieList mov = new MovieList(movies);
  mov.SortMoviesByCount();
  String viewpoint = mov.overallComment();
  String nums = mov.addedNums();
  println(viewpoint);
  println(nums);
  println(mov);

  String average="Average review score across all "+reviewCount+" reviews: "+mov.getAverageScore();
  println(average);

  background(0);
  textSize(32);
  text("Movie review data:", 50, 100);
  textSize(20);
  text("Total loaded reviews: 6903", 50, 150);
  text("Reviews with: ", 50, 200);
  textSize(16);
  text(nums, 50, 250);
  textSize(20);
  text(average, 50, 400);
}
