import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/log_in.dart';
import 'app_theme.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: buildThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
