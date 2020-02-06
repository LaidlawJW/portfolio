public class MovieList {

  private int count;
  private String [] movies;

  List movieList = new ArrayList<Movie>();

  public MovieList() {
    movieList = new <Movie> ArrayList();
  }

  public void loadMovies() {
    movies=loadStrings("movieReview.txt");

    for (String s : movies) {
      Scanner scan = new Scanner(s);
      movieList.add(new Movie(scan.nextInt(), scan.nextLine()));
      scan.close();
    }

    for (Movie m : movieList) {
      println(m);
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
      result="This movie is average.";
    }

    if (getAverageScore()>=1.5 && getAverageScore()<2.5) {
      result="This movie is boring.";
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
