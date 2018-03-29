import 'package:flutter/material.dart';

class Storyline extends StatelessWidget {
  final String storyline;

  Storyline(this.storyline);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Text(
          'Story line',
          style: textTheme.subhead.copyWith(fontSize: 18.0),
        ),
        new Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: new Text(
            storyline,
            style: textTheme.body1.copyWith(
              color: Colors.black45,
              fontSize: 16.0,
            ),
          ),
        ),
        new Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            new Text(
              'more',
              style: textTheme.body1.copyWith(
                fontSize: 16.0,
                color: theme.accentColor,
              ),
            ),
            new Icon(
              Icons.keyboard_arrow_down,
              size: 18.0,
              color: theme.accentColor,
            ),
          ],
        ),
      ],
    );
  }
}
