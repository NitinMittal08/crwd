import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../values/colour.dart';

class OrganizerReviews extends StatefulWidget {
  const OrganizerReviews({Key? key}) : super(key: key);

  @override
  State<OrganizerReviews> createState() => _OrganizerReviewsState();
}

class _OrganizerReviewsState extends State<OrganizerReviews> {

  String qw='“Lorem ips dolor sit amet, consectetur adipisci elit, sed eius mod tempor incidunt ut labore et dolore magna aliqua.”';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colour.bgColor,
            iconTheme: IconThemeData(color: Colour.black),
            title:  CommonFun.textBold('Organizer Reviews', 16, TextAlign.center, color: Colour.black),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 1,
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 15, left: 10),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colour.pink,
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: Center(child: CommonFun.textBold(
                                    '4.4', 14, TextAlign.center, color: Colour.white)),
                              ),

                              Container(
                                  margin: EdgeInsets.only(top: 8, left: 10),
                                  child: CommonFun.textBold(
                                      '520 reviews', 14, TextAlign.center, color: Colour.black)),

                              Container(
                                  margin: EdgeInsets.only(top: 8, left: 10),
                                  child: CommonFun.textReg(
                                      'Star rating', 14, TextAlign.center, color: Colour.black)),
                            ],
                          ),

                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: 220,
                            height: 150,
                            child: ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return LinearPercentIndicator(
                                  width: 120.0,
                                  animation: true,
                                  animationDuration: 1000,
                                  lineHeight: 8.0,
                                  leading: Text("5 Stars"),
                                  trailing: Text("200"),
                                  percent: 0.2,
                                  barRadius: Radius.circular(10),
                                  linearStrokeCap: LinearStrokeCap.butt,
                                  progressColor: Colors.red,
                                );
                              },),
                          ),

                        ]),
                  ),


                  Card(


                        elevation: 1,
                        color: Colour.greyLight,
                        shadowColor: Colour.greyLight,
                        surfaceTintColor: Colour.greyLight,






                    child: ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return  Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(50),
                                        child: Image.asset('assets/images/image_3.png',height: 35,width:35,fit: BoxFit.fill,),
                                      ),
                                      Container(
                                        margin:const EdgeInsets.only(left: 5),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            CommonFun.textMed("Afshin", 12, TextAlign.start, color: Colour.black),
                                            CommonFun.textReg("Star rating", 12, TextAlign.start, color: Colour.greyText),

                                          ],
                                        ),
                                      )
                                    ],
                                  ),

                                  CommonFun.textMed("2 month ago", 12, TextAlign.start, color: Colour.greyText),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child:  CommonFun.textMed(qw, 12, TextAlign.start, color: Colour.greyText),
                            ),

                            Container(
                              margin: const EdgeInsets.only(top: 5,bottom: 5),
                              child: const Divider(
                                height: 1,
                                thickness: 1,
                              ),
                            )

                          ],
                        );
                      },),
                  )

                ],
              ),
            ),
          ),
        ));
  }
}
