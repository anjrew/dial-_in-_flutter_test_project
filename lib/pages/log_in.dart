import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

/// UI View
class _MyHomePageState extends State<MyHomePage> {

  /// Functions
  void forgotPassword() {
    print(" Forgot password button pressed");
  }

  void loginButtonPressed() {
    print('login button pressed');
  }

  void signUpButtonPressed() {
    print('signUp');
  }


///
/// UI Build
///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[

           Pagebackground(AssetImage('assets/images/cherries.jpg')), 
       

          new Center(
            ///
            /// View components
            /// 
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DialInLogo(),

                // Welcome text
                Container(
                  width: 230.0,
                  margin: const EdgeInsets.all(10.0),
                  alignment: Alignment(0.0, 0.0),
                  child: Text(StringLabels.welcomeToDialIn,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70, fontSize: 23.0)),
                ),

                // Instructions
                Container(
                  width: 260.0,
                  margin: const EdgeInsets.all(10.0),
                  alignment: Alignment(0.0, 0.0),
                  child: Text(StringLabels.logInWithDetails,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white70)),
                ),

                // Email field
                TextFieldEntry(StringLabels.email),

                // Password
                TextFieldEntry(StringLabels.password),

                // Forgotton password
                Container(
                  margin: const EdgeInsets.all(5.0),
                  child: FlatButton(
                      child: Text(StringLabels.forgottonPassword,
                          style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w600)),
                      onPressed: () {
                        setState(() {
                          forgotPassword();
                        });
                      }),
                ),

                LoginButton(),

                Container(
                    margin: const EdgeInsets.all(15.0),
                    child: Center(
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                          // Text
                          Container(
                              margin: const EdgeInsets.all(0.0),
                              child: Text(StringLabels.dontHaveAccount,
                                  style: TextStyle(
                                      color: Colors.white70, fontSize: 10.0))),

                          // Sign up button
                          SignUpButton()

                        ])))
              ],
            ),
          )
        ],
      ),
    );
  }
}


///
/// Login button
///
class LoginButton extends StatelessWidget {

Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.orange.shade600.withOpacity(0.6),
      child: Text(StringLabels.logIn,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0)),
      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SignUpPage()),)
    );
  }
}

///
///Sign up Button
///

class SignUpButton extends StatelessWidget {
  void signUpButtonPressed() {
    print('login button pressed');
  }

@override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.all(0.0),
        child: RaisedButton(
            color: Colors.transparent,
            child: Text(StringLabels.signUp,
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300)),
            onPressed: () {
              signUpButtonPressed();
            }));
  }
}
