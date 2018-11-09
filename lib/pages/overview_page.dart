
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';
import '../appColors.dart';
import 'data.dart';
import 'profile.dart';
import 'feed.dart';
import 'user_profie.dart';


class OverviewPage extends StatefulWidget{
 @override
  OverviewPageState createState() => new OverviewPageState();
}

class OverviewPageState extends State<OverviewPage> with SingleTickerProviderStateMixin{

TabController controller;

int _bottomNavbarIndex = 0;
List<Widget> _tabViews;


@override
void initState() { 
  super.initState();
  controller = new TabController(vsync: this, length: 3);
}

@override
void dispose(){
controller.dispose();
super.dispose();
}

//
/// UI Build
///
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
       
      /// 
      /// App bar 
      ///
      appBar: AppBar( backgroundColor: Colors.orange.withOpacity(0.8),title: Text(StringLabels.overview, style: TextStyle( fontWeight: FontWeight.w700),), automaticallyImplyLeading: false,
      leading: RawMaterialButton( onPressed: () => Navigator.pop(context), 
            child: Text('Log out'),), ),

      body: TabBarView(
        controller: controller,
        children: <Widget>[
          new DataPage(),
          new FeedPage(),
          new UserProfilePage()
        ],
      ),
    
     
     

     bottomNavigationBar: Material(child: 
     TabBar(
        controller: controller,
        tabs: <Widget>[    
          Tab(icon: Icon(Icons.public), text: "Feed"),
          Tab(icon: Icon(Icons.list), text: "Data"),
          Tab(icon: Icon(Icons.portrait), text: "User"),
        ],),),
      );
    }
}


///
/// Tab bar controller
/// 

// TabBarView(
//         controller: _controller,
//         children: <Widget>[    
//           Tab(icon: Icon(Icons.public), text: "Feed"),
//           Tab(icon: Icon(Icons.list), text: "Data"),
//           Tab(icon: Icon(Icons.portrait), text: "User"),
//         ],
  
//       ),










///
/// Page components
///

/// Bar button








  // new Stack(
  //       children: <Widget>[

  //     ///
  //     ///Background
  //     ///
  //     Pagebackground(AssetImage('assets/images/cherries.jpg')),
    
  //     /// 
  //     /// Main body
  //     /// 
  //     ListView( children: <Widget>[
  //       Card( color: Colors.transparent,
  //         child: Column( children: <Widget>[

  //             ///
  //             /// User profile card
  //             /// 
  //             UserCard(),

  //             ProfileCard()
 
  //         ],          
  //         ),
  //       )
  //     ]
  //     ),
  //      ]
  //    ),


  //  bottomNavigationBar: Material(
  //     currentIndex: _bottomNavbarIndex, 
  //     onTap: (int index){ setState(() { _bottomNavbarIndex = index;}); },
  //     items: [

  //       BottomNavigationBarItem(icon: Icon(Icons.public), title: Text("Feed")),
  //       BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("Data")),
  //       BottomNavigationBarItem(icon: Icon(Icons.portrait), title: Text("User")),
  //       // BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Twat")),
  //       // BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("My Profile"))

  //     ],)