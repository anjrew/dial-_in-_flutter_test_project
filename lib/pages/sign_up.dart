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
          ///
          /// Background
          /// 
           Pagebackground(AssetImage('assets/images/cherriestwo.jpg')),

          ///
          /// Back icon
          /// 
          Container(  height: 30.0, width: 30.0, margin: EdgeInsets.all(20.0), padding: EdgeInsets.all(0.0),
            child: RawMaterialButton( onPressed: () => Navigator.pop(context), 
            child: Container(   decoration: BoxDecoration( image: DecorationImage( image: AssetImage('assets/images/back_icon.png'), fit: BoxFit.cover)),),),),
         
          new Center(
            child: Column(  mainAxisAlignment: MainAxisAlignment.center, 
              children: <Widget>[
              
                /// New User text
                Text(StringLabels.newUser,  style: TextStyle(color: Colors.black87, fontSize: 30.0),),

                ///User Picture
                Container( margin: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 25.0) , child: CircularPicture(_userImage, 100.0)),

                /// Sign up details
                /// Username
                Text(StringLabels.userName, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.userName),
                /// Email
                Text(StringLabels.email, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.email),
                /// Password
                Text(StringLabels.password, style: TextStyle( color: Colors.white70),),
                TextFieldEntry(StringLabels.password),

                /// Signup button
                Container(  margin: EdgeInsets.all(20.0), child: ActionButton(StringLabels.signUp, () =>{}),)
              ],
            ),
          )
        ]
      )
    );
  }
}