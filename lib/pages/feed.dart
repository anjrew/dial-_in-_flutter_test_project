import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget {
  @override
  FeedPageState createState() => new FeedPageState();
}

class FeedPageState extends State<FeedPage> {
  /// UI Build
  ///
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: Center(
        child: Icon(Icons.ac_unit),
      ),
    );
  }
}
