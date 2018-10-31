import 'package:flutter/material.dart';

class AppColors {

  static Color getColor(ColorType font) {
    Color returnValue;

    switch (font) {
      case ColorType.background:
        returnValue = Color.fromARGB(250, 50, 50, 50);
        break;
        case ColorType.tint:
        returnValue = Color.fromARGB(250, 208 , 136, 75);
        break;

        case ColorType.white:
        returnValue = Color.fromARGB(250, 230, 230, 230);
        break;

        case ColorType.toolBar:
        returnValue = Color.fromARGB(250, 25, 25, 25);
        break;

        case ColorType.popupBackground:
        returnValue = Color.fromARGB(50, 0, 0, 0);
        break;

        case ColorType.primarySwatch:
        returnValue = Color.fromARGB(50, 0, 0, 0);
        break;

      default:
        returnValue = Color.fromARGB(250, 230, 230, 230);
    }
    return returnValue;
  }
}

enum ColorType { background, tint, white , toolBar,  popupBackground, primarySwatch}