public class Movie implements Comparable<Movie> {
  private int rating;
  private String review;

  public Movie(int rat, String rev) {
    rating = rat;
    review = rev;
  }

  public int getRating() {
    return this.rating;
  }

  public String getReview() {
    return this.review;
  }

  public String toString() {
    String print="";
    print=("Rating: "+rating+"\n"+"Reason: "+review+"\n");
    return print;
  }
}
