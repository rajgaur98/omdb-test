class MovieList{
  final List<Movie> movieList;
  MovieList({this.movieList});

  factory MovieList.fromJson(List<dynamic> parsedJson) {

    List<Movie> movieList = new List<Movie>();
    movieList = parsedJson.map((i)=>Movie.fromJson(i)).toList();

    return new MovieList(
        movieList: movieList
    );
  }
}

class Movie{
  String title;
  String year;
  String type;
  String poster;
  String imdbId;

  Movie({this.title, this.year, this.type, this.poster, this.imdbId});

  factory Movie.fromJson(Map<String, dynamic> json){
    return new Movie(
      title: json['Title'],
      year: json['Year'],
      type: json['Type'],
      poster: json['Poster'],
      imdbId: json['imdbId']
    );
  }

}