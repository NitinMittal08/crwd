
import 'package:flutter/material.dart';
import '../../values/colour.dart';
import '../../values/commonFun.dart';
import 'host_basic_5.dart';

class HostBasicFour extends StatefulWidget {
  const HostBasicFour({super.key});

  @override
  State<HostBasicFour> createState() => _HostBasicFourState();
}

class _HostBasicFourState extends State<HostBasicFour> {
  int attendeesCount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.whiteApp,
            appBar: AppBar(
              backgroundColor: Colour.whiteApp,
              elevation: 0,
              automaticallyImplyLeading: false,
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
                    CommonFun.textBold('Host Event', 16, TextAlign.center, color: Colour.black),
                  ],
                ),
              ),
            ),
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: <Widget>[


                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.all(15),
                          child: CommonFun.textBold("Event Ticket Pricing", 18, TextAlign.start, color: Colour.black)),

                      Container(
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonFun.textMed("Normal Ticket Price", 12, TextAlign.start, color: Colour.black),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (attendeesCount > 0) {
                                      attendeesCount--;
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadiusDirectional.circular(50)),
                                    child: Center(
                                        child: Container(
                                            transform: Matrix4.translationValues(0, -6, 0),
                                            child: Icon(
                                              Icons.minimize,
                                              color: Colour.white,
                                              size: 18,
                                            ))),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                CommonFun.textMed(attendeesCount.toString(), 14, TextAlign.start, color: Colour.black),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    attendeesCount++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colour.black, width: 1), borderRadius: BorderRadiusDirectional.circular(50)),
                                    child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colour.black,
                                          size: 18,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonFun.textMed("VIP Ticket Price ", 12, TextAlign.start, color: Colour.black),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                InkWell(
                                  onTap: () {
                                    if (attendeesCount > 0) {
                                      attendeesCount--;
                                    }
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadiusDirectional.circular(50)),
                                    child: Center(
                                        child: Container(
                                            transform: Matrix4.translationValues(0, -6, 0),
                                            child: Icon(
                                              Icons.minimize,
                                              color: Colour.white,
                                              size: 18,
                                            ))),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                CommonFun.textMed(attendeesCount.toString(), 14, TextAlign.start, color: Colour.black),
                                const SizedBox(width: 5),
                                InkWell(
                                  onTap: () {
                                    attendeesCount++;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border: Border.all(color: Colour.black, width: 1), borderRadius: BorderRadiusDirectional.circular(50)),
                                    child: Center(
                                        child: Icon(
                                          Icons.add,
                                          color: Colour.black,
                                          size: 18,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),


                      Expanded(child: Container(color: Colors.transparent)),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 20, left: 20, top: 100, bottom: 20),
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
                              child: CommonFun.textBold("Next", 16, TextAlign.center, color: Colour.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const HostBasicFive()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
    ));
  }
}
