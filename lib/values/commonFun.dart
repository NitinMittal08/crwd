

import 'dart:ui';

import 'package:flutter/material.dart';

import 'colour.dart';

class CommonFun{

  //!!text(bold)
  static Widget textBold(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_bold", fontSize: fontSize, color: color, decoration: TextDecoration.none),
      textAlign: align,
    );
  }

  static Widget textBold1(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_bold", fontSize: fontSize, color: color, decoration: TextDecoration.none, overflow: TextOverflow.ellipsis),
      textAlign: align,
    );
  }





  //!!text(Med)
  static Widget textMed(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_Med", fontSize: fontSize, color: color , decoration: TextDecoration.none),
      textAlign: align,
    );
  }
  //!!text(Reg)
  static Widget textReg(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_Reg", fontSize: fontSize, color: color,  decoration: TextDecoration.none,),
      textAlign: align,
    );
  }


  static Widget textReg1(String stringName, double fontSize, TextAlign align,
      {required Color color}) {
    return Text(
      stringName,
      style:
      TextStyle(fontFamily: "poppins_Reg", fontSize: fontSize, color: color,  decoration: TextDecoration.none, overflow: TextOverflow.ellipsis),
      textAlign: align,
    );
  }


  static Widget indicators(int i) {
    return Row(
      children: [
        Container(
          width: (i==1)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==1)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==2)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==2)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==3)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==3)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==4)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==4)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==5)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==5)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==6)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==6)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
        Container(
          width: (i==7)?12:8,height: 8,
          decoration: BoxDecoration(
              border: Border.all(width: 1,color: Colour.pink),
              color: (i==7)?Colour.pink:Colour.bgColor,
              borderRadius: BorderRadiusDirectional.circular(50)
          ),
        ),
        const SizedBox(width: 3),
      ],
    );
  }




}