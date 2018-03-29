import 'package:flutter/material.dart';
import 'package:movie_detail/models.dart';

class ActorScroller extends StatelessWidget {
  final List<Actor> actors;

  ActorScroller(this.actors);

  Widget _buildActor(BuildContext context, int index) {
    var actor = actors[index];

    return new Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: new Column(
        children: <Widget>[
          new CircleAvatar(
            backgroundImage: new AssetImage(actor.avatarUrl),
            radius: 40.0,
          ),
          new Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: new Text(actor.name),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;

    return new Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: new Text(
            'Actors',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(120.0),
          child: new ListView.builder(
            padding: const EdgeInsets.only(top: 12.0, left: 20.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: _buildActor,
            itemCount: actors.length,
          ),
        ),
      ],
    );
  }
}
