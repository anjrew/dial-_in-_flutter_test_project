import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';


class OverviewPage extends StatelessWidget {

//
/// UI Build
///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       
      /// 
      /// App bar 
      /// 
      appBar: AppBar(title: Text(StringLabels.overview,)),
      
      body:
      new Stack(
        children: <Widget>[

      ///
      ///Background
      ///
      Pagebackground(AssetImage('assets/images/cherries.jpg')),
    
      /// 
      /// Main body
      /// 
      ListView( children: <Widget>[
        Card(
          child: Column( children: <Widget>[

              ///
              /// User profile card
              /// 
              UserCard(),

              ProfileCard()
 
          ],          
          ),
        )
      ]
      )
      ]
      )
    );
  }
}


///
/// Page components
/// 


class ProfileCard extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Card(
      child: Row( 
        children: <Widget>[
          
          ///
          /// Profile picture
          /// 
          Container( child: CircularPicture(Image.asset('assets/images/user.png'), 60.0)),

          Expanded(child:
          Row( children: <Widget>[

            ///
            /// Main name and secondnary details
            /// 
            Expanded(child:Container( padding: EdgeInsets.all(0.0), child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
              Container(margin: EdgeInsets.all(10.0),child: Text('Main')),
              Container(margin: EdgeInsets.all(10.0), child: Text('Second'),)
              ]
              ) 
            )),
            ///
            /// Third and fourth details
            ///
            Expanded(child:Container( padding: EdgeInsets.all(0.0), child:
            Column(crossAxisAlignment: CrossAxisAlignment.end,children: <Widget>[
              Container(margin: EdgeInsets.all(10.0),child: Text('Third')),
              Container(margin: EdgeInsets.all(10.0), child: Text('Fourth'),)
              ]
              ) 
            ))
        ]
      )
      )
        ]
      )
    );
}
}







class UserCard extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Card(
      child: Row( 
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

        ///
        /// User Image
        /// 
        Container(child: Center(child:CircularPicture(Image.asset('assets/images/user.png'), 100.0))),
        
        Column( children: <Widget>[
          ///
          /// User name text
          /// 
          Text(StringLabels.userName),

          Container( child: Row( children: <Widget>[

            ///
            /// Brew count
            /// 
            Container( padding: EdgeInsets.all(20.0), child:
            Column(children: <Widget>[Text(StringLabels.brewCount), Text("count")],),
            ),

            ///
            ///Bean stash
            ///
            Container( padding: EdgeInsets.all(20.0), child:
            Column(children: <Widget>[Text(StringLabels.beanStash), Text("count")],)
            )
          ],),)
        ],)
        ]
      )
    );
  }
}

