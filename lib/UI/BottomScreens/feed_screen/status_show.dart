
import 'package:flutter/material.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class StatusShow extends StatefulWidget {
  const StatusShow({super.key});

  @override
  State<StatusShow> createState() => _StatusShowState();
}

class _StatusShowState extends State<StatusShow> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.black,
      body: Stack(
        children: [

          SizedBox (
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/onboard_screen/screen_three.png'),
          ),

          Container(
            alignment: Alignment.center,
            height: 50,
            margin: const EdgeInsets.only(right: 15, left: 15, top: 40),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: ClipRRect(
                        borderRadius: BorderRadiusDirectional.circular(50),
                        child: Image.asset(
                          'assets/images/onboard_screen/screen_three.png',
                          height: 50,
                          width: 50,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      alignment: FractionalOffset.centerLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CommonFun.textBold(
                            'Jame Doe',
                            12,
                            TextAlign.start,
                            color: Colour.white,
                          ),
                          CommonFun.textMed('15 min', 12, TextAlign.start, color: Colour.white)
                        ],
                      ),
                    ),
                  ],
                ),
                ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(50),
                  child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        'assets/images/cancel.png',
                        height: 20,
                        width: 20,
                        fit: BoxFit.fill,
                        color: Colour.white,
                      )),
                ),
              ],
            ),
          ),

        ],
      ),
    ));
  }
}
