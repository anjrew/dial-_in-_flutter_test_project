import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/log_in.dart';
import 'app_theme.dart';
import 'pages/sign_up.dart';
import 'custom_widgets.dart';

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

      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case '/': return new MyCustomRoute(
            builder: (_) => new MyHomePage(),
            settings: settings,
          );
          case '/signup': return new MyCustomRoute(
            builder: (_) => new SignUpPage(),
            settings: settings,
          );
        }
        assert(false);
      }
    );
  }
}
