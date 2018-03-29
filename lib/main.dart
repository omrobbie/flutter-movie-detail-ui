import 'package:flutter/material.dart';
import 'package:movie_detail/movie_api.dart';
import 'package:movie_detail/movie_details_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Movie Detail',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
        accentColor: const Color(0xFFFF5959),
      ),
      home: new MovieDetailsPage(dummyData),
    );
  }
}
