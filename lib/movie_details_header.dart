import 'package:flutter/material.dart';
import 'package:movie_detail/arc_banner_image.dart';
import 'package:movie_detail/models.dart';
import 'package:movie_detail/poster.dart';
import 'package:movie_detail/rating_information.dart';

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;

  MovieDetailsHeader(this.movie);

  _buildCategoryChips(TextTheme textTheme) {
    return movie.categories.map((category) {
      return new Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: new Chip(
          label: new Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Colors.black12,
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    var movieInformation = new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          movie.title,
          style: textTheme.title,
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new RatingInformation(movie),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 12.0),
          child: new Row(
            children: _buildCategoryChips(textTheme),
          ),
        )
      ],
    );

    return new Stack(
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.only(bottom: 140.0),
          child: new ArcBannerImage(movie.bannerUrl),
        ),
        new Positioned(
          bottom: 0.0,
          left: 16.0,
          right: 16.0,
          child: new Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              new Poster(
                movie.posterUrl,
                height: 180.0,
              ),
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: movieInformation,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
