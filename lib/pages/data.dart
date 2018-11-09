import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../strings.dart';
import '../custom_widgets.dart';
import 'sign_up.dart';
import '../appColors.dart';
import 'profile_list.dart';


class DataPage extends StatefulWidget{
 @override
  DataPageState createState() => new DataPageState();
}

class DataPageState extends State<DataPage> with SingleTickerProviderStateMixin{

TabController controller;
TabViewDataArray _lists;
int _topNavbarIndex = 0;


@override
void initState() { 
  super.initState();
  _lists = TabViewDataArray();
  controller = new TabController( vsync: this, length: _lists.ref.length);
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
    return new Container(child: Column( children: <Widget>[

      Container(child:

      TabBar(
        controller: controller,
        tabs: <Widget>[    
          _lists.ref[0].tab,
          _lists.ref[1].tab,
          _lists.ref[2].tab,
        ]),
      ),

      Expanded(child:
        TabBarView(
          controller: controller,
          children: <Widget>[
            _lists.ref[0].screen,
            _lists.ref[1].screen,
            _lists.ref[2].screen,
          ],
        ),
      ),

      // SocialProfile(),
      // AddButton()
       
    ],
    )     
    );   
    }
}

class TabViewDataArray{

  List<TabViewData> ref;

 TabViewDataArray(){ 
   
    this.ref = [

    TabViewData(ProfileList(), Tab(icon: Icon(Icons.public), text: "Feed")),
   
    TabViewData(ProfileList(),Tab(icon: Icon(Icons.list), text: "Data"),),

    TabViewData(ProfileList(),Tab(icon: Icon(Icons.portrait), text: "User"),),
    ];
 }
}