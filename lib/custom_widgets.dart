import 'package:flutter/material.dart';

///
/// Background
/// 
class Pagebackground extends StatelessWidget{

 final AssetImage _image;

 Pagebackground(this._image);

  @override
  Widget build(BuildContext context) {
    return 
  /// Background
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: _image,
                fit: BoxFit.fitHeight,
              ),
            ),
          );
  }
}


///
/// Dial in logo
///
class DialInLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: Image.asset('assets/images/DialInWhiteLogo.png',
          height: 50.0, width: 50.0),
    );
  }
}



///
///Text Field entry
///

class TextFieldEntry extends StatefulWidget {
  final String placeholder;
  TextFieldEntry(this.placeholder);

  @override
  State<StatefulWidget> createState() {
    return _TextFieldEntryState();
  }
}

/// Textfield Entry
class _TextFieldEntryState extends State<TextFieldEntry> {
  String _placeholderText;

  @override
  void initState() {
    _placeholderText = widget.placeholder;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return 
        Container(
            width: 200.0,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(0.0),
            alignment: const Alignment(0.0, 0.0),
            child: TextFormField(
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(const Radius.circular(10.0))),
                    filled: true,
                    hintText: _placeholderText,
                    hintStyle: TextStyle(color: Colors.black),
                    fillColor: Colors.grey.withOpacity(0.7))));
  }
}

class CircularPicture extends StatelessWidget {
final Image _image;
final double _size;

CircularPicture(this._image,this._size);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      child: _image,
          height: _size, width: _size
    );
  }
}



///
/// Action button
/// 
class ActionButton extends StatelessWidget {

final String _buttonTitle;
final void _buttonAction;

ActionButton(this._buttonTitle, this._buttonAction);

  void actionButtonPressed() {
    print('login button pressed');
  }

Widget build(BuildContext context) {
    return RaisedButton(
      padding: EdgeInsets.fromLTRB(25.0, 10.0, 25.0, 10.0),
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
      color: Colors.orange.shade600.withOpacity(0.6),
      child: Text(_buttonTitle,
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25.0)),
      onPressed: () {
        actionButtonPressed();
        _buttonAction;
      },
    );
  }
}

///
/// Custom page transitions
/// 
class MyCustomRoute<T> extends MaterialPageRoute<T> {
  MyCustomRoute({ WidgetBuilder builder, RouteSettings settings })
      : super(builder: builder, settings: settings);

  @override
  Widget buildTransitions(BuildContext context,
      Animation<double> animation,
      Animation<double> secondaryAnimation,
      Widget child) {
    if (settings.isInitialRoute)
      return child;
    // Fades between routes. (If you don't want any animation, 
    // just return child.)
    return new FadeTransition(opacity: animation, child: child);
  }
}