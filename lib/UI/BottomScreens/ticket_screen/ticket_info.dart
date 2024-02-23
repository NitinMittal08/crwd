
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class TicketInfo extends StatefulWidget {
  const TicketInfo({Key? key}) : super(key: key);

  @override
  State<TicketInfo> createState() => _TicketInfoState();
}

class _TicketInfoState extends State<TicketInfo> {
  String qrData="https://github.com/ChinmayMunje";
  final qrdataFeed = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
          title:CommonFun.textBold('Ticket Details', 16, TextAlign.start, color: Colour.black),
          automaticallyImplyLeading: true,
        ),
         body: Card(
          elevation: 0,
          color: Colour.white,
          margin:const EdgeInsets.only(top: 10,right: 10,left: 10),
          shadowColor: Colour.greyLight,
          surfaceTintColor: Colour.greyLight,
          child: Container(
            decoration: BoxDecoration(
                color: Colour.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [


                  RichText(
                    textAlign:TextAlign.center,
                    text:  TextSpan(
                        text:"Scan This QR  \n",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: "poppins_Bold",
                            color: Colour.black,
                            fontSize: 16),
                        children:  <TextSpan>[
                          TextSpan(
                            text:  "Point this QR to the scan place",
                            style: TextStyle(
                                fontFamily: "poppins_Med",
                                color: Colour.pink,
                                fontSize: 12),
                          ),

                        ]),
                  ),



                  CommonFun.textReg('Check your email amierosie@yomail.com in order to know how to get in the event', 14,
                      TextAlign.center, color: Colour.black),




                  Image.asset('assets/images/line.png'),
               
                  CommonFun.textBold('Sunday Sqool Comedy', 16, TextAlign.center, color: Colour.black),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign:TextAlign.start,
                          text:  TextSpan(
                              text:"Date \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Med",
                                  color: Colour.black,
                                  fontSize: 12),
                              children:  <TextSpan>[
                                TextSpan(
                                  text:  "19 May 2022",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.pink,
                                      fontSize: 12),
                                ),

                              ]),
                        ),
                        RichText(
                          textAlign:TextAlign.end,
                          text:  TextSpan(
                              text:"Hour \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Med",
                                  color: Colour.black,
                                  fontSize: 12),
                              children:  <TextSpan>[
                                TextSpan(
                                  text:  "4:30 PM",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.pink,
                                      fontSize: 12),
                                ),

                              ]),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                          textAlign:TextAlign.start,
                          text:  TextSpan(
                              text:"Ticket \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Med",
                                  color: Colour.black,
                                  fontSize: 12),
                              children:  <TextSpan>[
                                TextSpan(
                                  text:  "2 Normal , 3 VIP",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.pink,
                                      fontSize: 12),
                                ),

                              ]),
                        ),
                        RichText(
                          textAlign:TextAlign.end,
                          text:  TextSpan(
                              text:"Location \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Med",
                                  color: Colour.black,
                                  fontSize: 12),
                              children:  <TextSpan>[
                                TextSpan(
                                  text:  "2241 Townhall, Columbia",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.pink,
                                      fontSize: 12),
                                ),

                              ]),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ),
      ),
    );
  }
}
