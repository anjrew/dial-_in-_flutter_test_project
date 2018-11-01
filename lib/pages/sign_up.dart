import 'package:flutter/material.dart';
import '../custom_widgets.dart';
import '../strings.dart';

class SignUpPage extends StatelessWidget{

final Image _userImage = Image.asset('assets/images/user.png');
 
///
/// UI Build
///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[

          /// Background
           Pagebackground(AssetImage('assets/images/cherries.jpg')),

          // Container(  height: 50.0, width: 50.0, margin: EdgeInsets.all(20.0), padding: EdgeInsets.all(0.0),
          //   child: RaisedButton(  color: Colors.transparent, onPressed: () => print('fuck'), 
          //   child: Container(   decoration: BoxDecoration( image: DecorationImage( image: AssetImage('assets/images/back_icon.png'), fit: BoxFit.cover)),),),),

              
          new Center(
            child: Column(  mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[

                Text(StringLabels.newUser,  style: TextStyle(color: Colors.white70, fontSize: 30.0),),

                Container( margin: EdgeInsets.all(25.0) , child: CircularPicture(_userImage, 50.0)),

                Text(StringLabels.userName, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.userName),
                Text(StringLabels.email, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.email),
                Text(StringLabels.password, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.password),

                Container(  margin: EdgeInsets.all(25.0), child: ActionButton(StringLabels.signUp),)
                

              
              ],
            ),
          )
        ]
      )
    );
  }

}