import 'package:flutter/material.dart';

class PhotoScroller extends StatelessWidget {
  final List<String> photoUrls;

  PhotoScroller(this.photoUrls);

  Widget _buildPhoto(BuildContext context, int index) {
    var photo = photoUrls[index];

    return new Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: new ClipRRect(
        borderRadius: new BorderRadius.circular(4.0),
        child: new Image.asset(
          photo,
          width: 160.0,
          height: 120.0,
          fit: BoxFit.cover,
        ),
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
            'Photos',
            style: textTheme.subhead.copyWith(fontSize: 18.0),
          ),
        ),
        new SizedBox.fromSize(
          size: const Size.fromHeight(100.0),
          child: new ListView.builder(
            padding: const EdgeInsets.only(top: 8.0, left: 20.0),
            scrollDirection: Axis.horizontal,
            itemBuilder: _buildPhoto,
            itemCount: photoUrls.length,
          ),
        ),
      ],
    );
  }
}
