class Movie implements Comparable<Movie> {
  private int rating;
  private String review;

  Movie(int rat, String rev) {
    rating = rat;
    review = rev;
  }

  public int getRating() {
    return rating;
  }

  public String getReview() {
    return review;
  }

  public int compareTo(Movie other) {
    if (rating>other.getRating()) {
      return 1;
    } else if (rating<other.getRating())
      return -1;
    else {
      return 0;
    }
  }

  public String toString() {
    return "Review: "+review+"\n"+"Rating: "+rating+"\n"+"\n";
  }
}
