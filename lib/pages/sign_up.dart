import 'package:flutter/material.dart';
import '../custom_widgets.dart';
import '../strings.dart';

class SignUpPage extends StatefulWidget{


 
@override
  _SignUpPageState createState() => new _SignUpPageState();
}


 class _SignUpPageState extends State<SignUpPage>{

  Image _userImage = Image.asset('assets/images/user.png');

  String _userName;
  TextEditingController _userNameController = new TextEditingController();
  FocusNode _userNameTextFocus = new FocusNode(); 

  String _email;
  TextEditingController _emailController = new TextEditingController();
  FocusNode _emailTextFocus = new FocusNode();

  String _password;
  TextEditingController _passwordController = new TextEditingController();
  FocusNode _passwordTextFocus = new FocusNode();

  void onUsernameChange(){
    String text = _emailController.text;
    bool hasFocus = _emailTextFocus.hasFocus;
    //do your text transforming
    _userNameController.text = _email;
    _userNameController.selection = new TextSelection(
                                  baseOffset: _email.length, 
                                  extentOffset: _email.length ); }

  void onEmailChange(){
    String text = _emailController.text;
    bool hasFocus = _emailTextFocus.hasFocus;
    //do your text transforming
    _emailController.text = _email;
    _emailController.selection = new TextSelection(
                                  baseOffset: _email.length, 
                                  extentOffset: _email.length ); }

   void onPasswordChange(){
    String text = _passwordController.text;
    bool hasFocus = _passwordTextFocus.hasFocus;
    //do your text transforming
    _emailController.text = _email;
    _emailController.selection = new TextSelection(
                                  baseOffset: _email.length, 
                                  extentOffset: _email.length ); }  

                                  @override
  void initState() {
    _userNameController.addListener(onEmailChange); 
    _userNameTextFocus.addListener(onEmailChange);
    _emailController.addListener(onEmailChange); 
    _emailTextFocus.addListener(onEmailChange);
    _passwordController.addListener(onPasswordChange);
    _passwordTextFocus.addListener(onPasswordChange);
    
      // TODO: implement initState
      super.initState();
    }        


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
                Text(StringLabels.userName, style: TextStyle( color: Colors.white70, fontWeight: FontWeight.w600),),
                TextFieldEntry(StringLabels.userName, _userNameController),
                /// Email
                Text(StringLabels.email, style: TextStyle( color: Colors.white70, fontWeight: FontWeight.w600),),
                TextFieldEntry(StringLabels.email, _emailController),
                /// Password
                Text(StringLabels.password, style: TextStyle( color: Colors.white70, fontWeight: FontWeight.w600),),
                TextFieldEntry(StringLabels.password, _passwordController),

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