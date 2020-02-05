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
  }
}
