enum Genre { Comedy, Drama, SF, Horror }

class TvShow {
  String name;
  int year;
  Genre genre;
  int nbSeason;
  String _test = "";

  String get test => _test;

  set test(String value) {
    _test = value;
  }

  TvShow(
      {required this.name,
      required this.year,
      this.genre = Genre.Drama,
      this.nbSeason = 0});

  TvShow.fromJson(Map<String, dynamic> json)
      : this.name = json['name'],
        this.year = json['year'],
        this.genre = json['genre'],
        this.nbSeason = json['nbSeason'];

  @override
  String toString() {
    return 'TvShow{name: $name, year: $year, genre: $genre, nbSeason: $nbSeason}';
  }
}

void main() {
  // var got = TvShow("GOT", 2010, Genre.Drama, 7);
  // got.name = "Code Quantum";
  // print(got.toString());

  var strangerThings = TvShow(name: "Stranger things", year: 2015);
  print(strangerThings.toString());

  var walkingDead = TvShow.fromJson({
    "name": "The Walking dead",
    "year": 2000,
    "genre": Genre.Horror,
    "nbSeason": 10
  });
  print(walkingDead);
}
