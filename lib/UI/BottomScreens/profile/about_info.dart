

import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class AboutInfo extends StatefulWidget {
  const AboutInfo({super.key});

  @override
  State<AboutInfo> createState() => _AboutInfoState();
}

class _AboutInfoState extends State<AboutInfo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colour.black),
          backgroundColor: Colour.bgColor,

          title: SizedBox(
            width: MediaQuery.of(context).size.width/1.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
                const SizedBox(width: 10),
                CommonFun.textBold1('About Information', 16, TextAlign.start, color: Colour.black),
              ],
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
           ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(color: Colour.white,borderRadius: BorderRadiusDirectional.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                    margin: const EdgeInsets.only(right: 15,left: 15,top: 15),
                    child: CommonFun.textBold1('Information', 16, TextAlign.start, color: Colour.black)),


                const Divider(
                  thickness: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10,left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textReg('Version', 12, TextAlign.start, color: Colour.black),
                      CommonFun.textReg('Orbit 11.53.3', 12, TextAlign.start, color: Colour.blackShade),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10,left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textReg('User ID', 12, TextAlign.start, color: Colour.black),
                      CommonFun.textReg('987462123211', 12, TextAlign.start, color: Colour.blackShade),
                    ],
                  ),
                ),
                const Divider(
                  thickness: 1,
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10,left: 10,bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textReg('Debug ID', 12, TextAlign.start, color: Colour.black),
                      CommonFun.textReg('253EDA6 -45Def8E', 12, TextAlign.start, color: Colour.blackShade),
                    ],
                  ),
                ),
              ],
            ),
          ),





          Container(
              margin: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: CommonFun.textBold1('About App', 16, TextAlign.start, color: Colour.black)),




          Container(
              margin: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: CommonFun.textReg(aboutParaOne, 12, TextAlign.start, color: Colour.black)),

          Container(
              margin: const EdgeInsets.only(right: 15,left: 15,top: 15),
              child: CommonFun.textReg(aboutParaTwo, 12, TextAlign.start, color: Colour.black)),



        ],
      ),
    ));
  }



  String aboutParaOne= 'It is a long established fact that a reader willdistracted by the readable content page when looking at its layout. The point of using Lorem Ipsum is that it has a more normal distribution of letters, as using \'Content here, content here making it look like readable English.';
  String aboutParaTwo = 'It is a long established fact that a reader willdistracted by the readable content page when looking at its layout. The point of using Lorem Ipsum is that it has a more normal distribution of letters, as using \'Content here, content here making it look like readable English.';
}
