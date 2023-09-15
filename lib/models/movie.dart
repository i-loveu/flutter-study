class MovieModel {
  final String title, poster_path, overview;
  final int id;
  final bool adult;
  final List genre_ids;

  MovieModel.fromJson(Map<String, dynamic> json)
      : title = json["title"],
        poster_path = json["poster_path"],
        overview = json["overview"],
        adult = json["adult"],
        genre_ids = json["genre_ids"],
        id = json["id"];
}
