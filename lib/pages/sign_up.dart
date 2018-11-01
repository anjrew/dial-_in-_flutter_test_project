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
              
          new Center(
            child: Column( 
              children: <Widget>[

                // RaisedButton.icon(onPressed: () =>{} , label: Image.asset('assets/images/back_icon.png'), icon: Image.asset('assets/images/back_icon.png'), ),
                // RaisedButton( onPressed:()=> {},  ),

                Text(StringLabels.newUser),

                CircularPicture(_userImage, 50.0),

                Text(StringLabels.userName),
                TextFieldEntry(StringLabels.userName),
                Text(StringLabels.email),
                TextFieldEntry(StringLabels.email),
                Text(StringLabels.password),
                TextFieldEntry(StringLabels.password),

                // ActionButton(StringLabels.signUp)
              ],
            ),
          )
        ]
      )
    );
  }

}