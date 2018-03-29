import 'package:flutter/material.dart';
import 'package:movie_detail/models.dart';

class MovieDetailsPage extends StatelessWidget {
  final Movie movie;

  MovieDetailsPage(this.movie);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new SingleChildScrollView(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: const EdgeInsets.all(20.0),
              child: null,
            ),
            new Text('Movie Details Page'),
          ],
        ),
      ),
    );
  }
}
