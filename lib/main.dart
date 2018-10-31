import 'package:flutter/material.dart';
import 'strings.dart';
import 'appColors.dart';
import 'fonts.dart';
import 'package:flutter/rendering.dart';
import 'loginPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: Fonts.getFontType(FontType.comfortaa)),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ThemeData buildThemeData(){

//   final baseTheme = ThemeData.light();

//   return baseTheme.copyWith(
//     primaryColor: AppColors.getColor(ColorType.background)

//   );
// }

// UI Controller
class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

/// UI View
class _MyHomePageState extends State<MyHomePage> {
  void forgotPassword() {
    print("Pressed");
  }

  void loginButtonPressed() {
    print('login button pressed');
  }

  void signUpButtonPressed() {
    print('signUp');
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // appBar: new AppBar(
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: new Text(widget.title),
      // ),
      body: new Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('assets/images/cherries.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          new Center(
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: new Column(
              // Column is also layout widget. It takes a list of children and
              // arranges them vertically. By default, it sizes itself to fit its
              // children horizontally, and tries to be as tall as its parent.
              //
              // Invoke "debug paint" (press "p" in the console where you ran
              // "flutter run", or select "Toggle Debug Paint" from the Flutter tool
              // window in IntelliJ) to see the wireframe for each widget.
              //
              // Column has various properties to control how it sizes itself and
              // how it positions its children. Here we use mainAxisAlignment to
              // center the children vertically; the main axis here is the vertical
              // axis because Columns are vertical (the cross axis would be
              // horizontal).
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Container( height: 50.0,  width: 50.0, margin: const EdgeInsets.all(30),
                //   decoration: (BoxDecoration(image:DecorationImage(image: ( new AssetImage('assets/images/DialInWhiteLogo.png')))))),

                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/images/DialInWhiteLogo.png',
                      height: 50.0, width: 50.0),
                ),

                Container(
                  width: 230.0,
                  margin: const EdgeInsets.all(20.0),
                  alignment: Alignment(0.0, 0.0),
                  child: Text(StringLabels.welcomeToDialIn,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 23.0)),
                ),

                Container(
                  width: 260.0,
                  margin: const EdgeInsets.all(20.0),
                  alignment: Alignment(0.0, 0.0),
                  child: Text(StringLabels.logInWithDetails,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white)),
                ),

                Container(
                    width: 200.0,
                    margin: const EdgeInsets.all(20.0),
                    alignment: Alignment(0.0, 0.0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration.collapsed(
                            hintText: StringLabels.email,
                            hintStyle: TextStyle(color: Colors.white30)))),

                Container(
                    width: 200.0,
                    margin: const EdgeInsets.all(0.0),
                    alignment: Alignment(0.0, 0.0),
                    child: TextField(
                        textAlign: TextAlign.center,
                        decoration: new InputDecoration.collapsed(
                            hintText: StringLabels.password,
                            hintStyle: TextStyle(color: Colors.white30),
                            fillColor: Colors.white30))),

                Container(
                  margin: const EdgeInsets.all(20.0),
                  child: FlatButton(
                      child: Text(StringLabels.forgottonPassword,
                          style: TextStyle(color: Colors.white)),
                      onPressed: () {
                        setState(() {
                          forgotPassword();
                        });
                      }),
                ),

                Container(
                    margin: const EdgeInsets.all(20.0),
                    child: RaisedButton(
                        child: Text(StringLabels.logIn),
                        onPressed: () {
                          setState(() {
                            loginButtonPressed();
                          });
                        })),

                Container(
                    margin: const EdgeInsets.all(20.0),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[

                         
                          Text(StringLabels.dontHaveAccount,
                              style: TextStyle(
                                  color: Colors.white, fontSize: 10.0)),


                          RaisedButton(
                            child: Text(StringLabels.signYouUp),
                            onPressed: () {
                              signUpButtonPressed();
                            },
                          )
                        ])))
              ],
            ),
          )
        ],
      ),
    );
  }
}
