

import 'package:flutter/material.dart';

import '../../../../values/colour.dart';
import '../../../../values/commonFun.dart';

class HelpSupport2 extends StatefulWidget {
  const HelpSupport2({super.key});

  @override
  State<HelpSupport2> createState() => _HelpSupport2State();
}

class _HelpSupport2State extends State<HelpSupport2> {


  String para1 = 'Even the all-powerful Pointing has no control bout the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.';
  String para2 = 'Even the all-powerful Pointing has no control about the blind texts it is an almost unorthograc life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen.';

    @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      backgroundColor: Colour.whiteApp,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colour.black),
        backgroundColor: Colour.whiteApp,
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
              const Text('Guideline',style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),

      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Container(
                margin: const EdgeInsets.only(top: 15 ,bottom: 10),
                child: CommonFun.textBold('How to connect wallet', 16, TextAlign.start, color: Colour.black)),


            CommonFun.textReg(para1, 12, TextAlign.start, color: Colour.greyText),
            const SizedBox(height: 8),
            CommonFun.textReg(para2, 12, TextAlign.start, color: Colour.greyText),



          ],
        ),
      ),
    ));
  }
}
