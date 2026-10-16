class Movie {
  final String title;
  final String genre;
  final int year;
  final double rating;
  final String image;

  const Movie({
    required this.genre,
    required this.year,
    required this.title,
    required this.rating,
    required this.image,
  });
}

final List<Movie> movies = [
  Movie(
    title: 'The Shawshank Redemption',
    genre: 'Drama',
    year: 1994,
    rating: 9.3,
    image: 'assets/shawshank_redemption_ver1.jpg',
  ),
  Movie(
    title: 'The Godfather',
    genre: 'Crime',
    year: 1972,
    rating: 9.2,
    image: 'assets/GodFather.webp',
  ),
  Movie(
    title: 'The Dark Knight',
    genre: 'Action',
    year: 2008,
    rating: 9.0,
    image: 'assets/THE DARK KNIGHT.webp',
  ),
  Movie(
    title: 'Inception',
    genre: 'Sci-Fi',
    year: 2010,
    rating: 8.8,
    image: 'assets/INCEPTION.webp',
  ),
  Movie(
    title: 'Interstellar',
    genre: 'Sci-Fi',
    year: 2014,
    rating: 8.7,
    image: 'assets/Interstellar.webp',
  ),
  Movie(
    title: 'The Matrix',
    genre: 'Sci-Fi',
    year: 1999,
    rating: 8.7,
    image: 'assets/The Matrix.jpg',
  ),
  Movie(
    title: 'Pulp Fiction',
    genre: 'Crime',
    year: 1994,
    rating: 8.9,
    image: 'assets/PULP FICTION.webp',
  ),
  Movie(
    title: 'Gladiator',
    genre: 'Action',
    year: 2000,
    rating: 8.5,
    image: 'assets/Gladiator.webp',
  ),
  Movie(
    title: 'Parasite',
    genre: 'Thriller',
    year: 2019,
    rating: 8.5,
    image: 'assets/Parasite.webp',
  ),
  Movie(
    title: 'Avengers: Endgame',
    genre: 'Action',
    year: 2019,
    rating: 8.4,
    image: 'assets/Avengers Endgame.webp',
  ),
];
