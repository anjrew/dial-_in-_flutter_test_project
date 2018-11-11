import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';
import '../appColors.dart';
import 'data.dart';
import '../profile.dart';
import 'feed.dart';
import '../item.dart';
import 'package:test_project/database_functions.dart';

class ProfileList extends StatelessWidget{

List<Profile> profiles;



@override
    Widget build(BuildContext context) {
      return ListView( children: <Widget>[

          ProfileCard(
            Profile(  
            updatedAt: DateTime.now(),
            objectId: "", type: ProfileType.barista, 
            properties: [Item("title", "value", "se gueId", "viewControllerId", "databaseId", "placeHolderText", TextInputType.text)],
            image: Image.asset('assets/images/DialInWhiteLogo.png'),
            databaseId: DatabaseFunctions.lot,
            viewContollerId: ViewControllerIds.lot,
            orderNumber: 0
            ),
          )
      ] 
    );
  }
}