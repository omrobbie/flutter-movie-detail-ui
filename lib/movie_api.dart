import 'package:movie_detail/models.dart';

final Movie dummyData = new Movie(
  bannerUrl: 'assets/banner.png',
  posterUrl: 'assets/poster.png',
  title: 'The Secret Life of Pets',
  rating: 8.0,
  starRating: 4,
  categories: ['Animation', 'Comedy'],
  storyline:
      'For their fifth fully-animated feature-film collaboration, Illumination Entertainment and Universal Pictures present The Secret Life of Pets, a comedy about the lives our...',
  photoUrls: [
    'assets/1.png',
    'assets/2.png',
    'assets/3.png',
    'assets/4.png',
  ],
  actors: [
    new Actor(
      name: 'Louis C.K.',
      avatarUrl: 'assets/louis.png',
    ),
    new Actor(
      name: 'Eric Stonestreet',
      avatarUrl: 'assets/eric.png',
    ),
    new Actor(
      name: 'Kevin Hart',
      avatarUrl: 'assets/kevin.png',
    ),
    new Actor(
      name: 'Jenny Slate',
      avatarUrl: 'assets/jenny.png',
    ),
    new Actor(
      name: 'Ellie Kemper',
      avatarUrl: 'assets/ellie.png',
    ),
  ],
);
