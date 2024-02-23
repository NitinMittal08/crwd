

import 'dart:ui';

import 'package:flutter/material.dart';

class CommonFun{

  //!!text(bold)
  static Widget textBold(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_bold", fontSize: fontSize, color: color),
      textAlign: align,
    );
  }
  //!!text(Med)
  static Widget textMed(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_Med", fontSize: fontSize, color: color),
      textAlign: align,
    );
  }
  //!!text(Reg)
  static Widget textReg(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_Reg", fontSize: fontSize, color: color),
      textAlign: align,
    );
  }

}