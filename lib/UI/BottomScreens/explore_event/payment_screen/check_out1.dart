import 'package:flutter/material.dart';

import '../../../../values/colour.dart';
import '../../../../values/commonFun.dart';
import '../../../MainScreens/main_page.dart';

class CheckOut1 extends StatefulWidget {
  const CheckOut1({super.key});

  @override
  State<CheckOut1> createState() => _CheckOut1State();
}

class _CheckOut1State extends State<CheckOut1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.whiteApp,
            appBar: AppBar(
              iconTheme: IconThemeData(color: Colour.black),
              backgroundColor: Colour.whiteApp,
              title: SizedBox(
                width: MediaQuery.of(context).size.width / 1.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset(
                          'assets/images/icon/back_icon.png',
                          width: 16,
                          height: 10,
                          fit: BoxFit.fill,
                        )),
                    const SizedBox(width: 10),
                    CommonFun.textBold('Check Completed', 16, TextAlign.center, color: Colour.black),
                  ],
                ),
              ),
              elevation: 0,
              automaticallyImplyLeading: false,
            ),
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('assets/images/profile/check_image.png', width: 230, height: 230),
                                CommonFun.textBold('Order Completed', 20, TextAlign.center, color: Colour.black),
                                CommonFun.textReg('See you at the event!', 12, TextAlign.center, color: Colour.greyText),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      decoration: BoxDecoration(color: Colour.divideLine3, borderRadius: BorderRadiusDirectional.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset('assets/images/icon/share.png', width: 18, height: 18),
                                      ),
                                    ),
                                    const SizedBox(width: 15),
                                    Container(
                                      decoration: BoxDecoration(color: Colour.divideLine3, borderRadius: BorderRadiusDirectional.circular(10)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Image.asset(
                                          'assets/images/icon/calender.png',
                                          width: 18,
                                          height: 18,
                                          color: Colour.greyText,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        Expanded(
                            flex: 2,
                            child: Center(
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
                                width: double.infinity,
                                height: 50,
                                decoration: BoxDecoration(
                                  color: Colour.pink,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: InkWell(
                                  child: SizedBox(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Center(
                                      child: CommonFun.textBold("View Ticket", 16, TextAlign.center, color: Colour.white),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage(index: 0)));
                                  },
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
