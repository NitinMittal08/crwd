
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class OrganizerProfile extends StatefulWidget {
  const OrganizerProfile({Key? key}) : super(key: key);

  @override
  State<OrganizerProfile> createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile> {

  String qw ='It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English.';
  int currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            backgroundColor: Colour.bgColor,
            title: const Text('Organizer Profile'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Container(
                                  margin: EdgeInsets.only(top: 8, left: 10),
                                  child: CommonFun.textBold(
                                      'Amie Rosie', 16, TextAlign.center, color: Colour.black)),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: CommonFun.textReg(
                                      '2241 Townhall, Columbia Boulevard ', 12, TextAlign.center, color: Colour.black)),
                              Container(
                                  margin: EdgeInsets.only( left: 10),
                                  child: CommonFun.textReg(
                                      '50 Events', 12, TextAlign.center, color: Colour.black)),


                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                margin: EdgeInsets.only(top: 3, left: 10),
                                decoration: BoxDecoration(
                                  color:Colour.pink,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: InkWell(
                                    child: SizedBox(
                                      width: 50,
                                      child: Center(
                                        child: CommonFun.textMed("Follow", 12, TextAlign.center,
                                            color:Colour.bgColor),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentTab =1;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ]),
                  ),
                ),

                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color:currentTab == 1 ?Colour.pink: Colour.bgColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            child: Center(
                              child: CommonFun.textBold("Events", 14, TextAlign.center,
                                  color:currentTab == 1 ?Colour.bgColor :Colour.pink),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            currentTab =1;
                          });
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color:currentTab == 2? Colour.pink:Colour.bgColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            child: Center(
                              child: CommonFun.textBold("Past", 14, TextAlign.center,
                                  color:currentTab ==2 ?Colour.bgColor :Colour.pink),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            currentTab =2;
                          });
                        },
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 40,
                      decoration: BoxDecoration(
                        color:currentTab == 3?Colour.pink:Colour.bgColor,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 100,
                            child: Center(
                              child: CommonFun.textBold("About", 14, TextAlign.center,
                                  color:currentTab == 3? Colour.bgColor:Colour.pink),
                            ),
                          ),
                        ),
                        onTap: () {
                          setState(() {
                            currentTab =3;
                          });
                        },
                      ),
                    ),
                  ],
                ),




                const SizedBox(height: 15),

                if(currentTab == 1)
                Expanded(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                    return Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [


                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only(top: 8, left: 10),
                                          child: CommonFun.textBold(
                                              'Amie Rosie', 16, TextAlign.start, color: Colour.black)),
                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only( left: 10),
                                          child: CommonFun.textReg(
                                              'Organized by Amie Rosie', 12, TextAlign.start, color: Colour.black)),
                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only(left: 10),
                                          child: CommonFun.textReg(
                                              '2241 Townhall, Columbia Boulevard ', 12, TextAlign.start, color: Colour.black)),


                                    ],
                                  ),
                                ],
                              ),


                              SizedBox(
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                    Container(
                                        child: CommonFun.textBold(
                                            '200', 12, TextAlign.center, color: Colour.pink)),
                                  ],
                                ),
                              ),

                            ]),
                      ),
                    );
                  },),
                ),


                if(currentTab == 2)
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 1,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [


                                          Container(
                                              width: 180,
                                              margin: EdgeInsets.only(top: 8, left: 10),
                                              child: CommonFun.textBold(
                                                  'Amie Rosie', 16, TextAlign.start, color: Colour.black)),
                                          Container(
                                              width: 180,
                                              margin: EdgeInsets.only( left: 10),
                                              child: CommonFun.textReg(
                                                  'Organized by Amie Rosie', 12, TextAlign.start, color: Colour.black)),
                                          Container(
                                              width: 180,
                                              margin: EdgeInsets.only(left: 10),
                                              child: CommonFun.textReg(
                                                  '2241 Townhall, Columbia Boulevard ', 12, TextAlign.start, color: Colour.black)),


                                        ],
                                      ),
                                    ],
                                  ),


                                  SizedBox(
                                    height: 80,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [

                                        Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                        Container(
                                            child: CommonFun.textBold(
                                                '200', 12, TextAlign.center, color: Colour.pink)),
                                      ],
                                    ),
                                  ),

                                ]),
                          ),
                        );
                      },),
                  ),


                if(currentTab == 3)
                 Column(
                   children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Card(
                           elevation: 1,
                           child: Container(
                             width: 100,
                             padding: const EdgeInsets.all(8.0),
                             child: RichText(
                               textAlign:TextAlign.center,
                               text:  TextSpan(
                                   text:"15k \n",
                                   style: TextStyle(
                                       overflow: TextOverflow.ellipsis,
                                       fontFamily: "poppins_Bold",
                                       color: Colour.pink,
                                       fontSize: 20),
                                   children:  <TextSpan>[
                                     TextSpan(
                                       text:  "Ticket Sold",
                                       style: TextStyle(
                                           fontFamily: "poppins_Med",
                                           color: Colour.black,
                                           fontSize: 14),
                                     ),

                                   ]),
                             ),
                           ),
                         ),
                         Card(
                           elevation: 1,
                           child: Container(
                             width: 110,
                             padding: const EdgeInsets.all(8.0),
                             child: RichText(
                               textAlign:TextAlign.center,
                               text:  TextSpan(
                                   text:"150k \n",
                                   style: TextStyle(
                                       overflow: TextOverflow.ellipsis,
                                       fontFamily: "poppins_Bold",
                                       color: Colour.pink,
                                       fontSize: 20),
                                   children:  <TextSpan>[
                                     TextSpan(
                                       text:  "Followers",
                                       style: TextStyle(
                                           fontFamily: "poppins_Med",
                                           color: Colour.black,
                                           fontSize: 14),
                                     ),

                                   ]),
                             ),
                           ),
                         ),
                         Card(
                           elevation: 1,
                           child: Container(
                             width: 100,
                             padding: const EdgeInsets.all(8.0),
                             child: RichText(
                               textAlign:TextAlign.center,
                               text:  TextSpan(
                                   text:"15k \n",
                                   style: TextStyle(
                                       overflow: TextOverflow.ellipsis,
                                       fontFamily: "poppins_Bold",
                                       color: Colour.pink,
                                       fontSize: 20),
                                   children:  <TextSpan>[
                                     TextSpan(
                                       text:  "Event",
                                       style: TextStyle(
                                           fontFamily: "poppins_Med",
                                           color: Colour.black,
                                           fontSize: 14),
                                     ),

                                   ]),
                             ),
                           ),
                         ),
                       ],
                     ),


                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CommonFun.textMed(qw, 14, TextAlign.start, color: Colour.greyText),
                     )
                   ]
                 )




              ],
            ),
          ),
        ));
  }
}
