
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
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
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
                const SizedBox(width: 8),
                CommonFun.textBold('Ticket Details', 16, TextAlign.center, color: Colour.black),
              ],
            ),
          ),


          elevation: 0,
          automaticallyImplyLeading: false,
        ),
         body: SingleChildScrollView(
           child: Column(
             children: [
               Container(
                 margin: const EdgeInsets.all(10),
                 decoration: BoxDecoration(
                     color: Colour.white,
                     borderRadius: BorderRadius.circular(10)
                 ),
                 child: Column(
                   mainAxisSize: MainAxisSize.min,
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,

                   children: [


                     Container(
                       margin: const EdgeInsets.only(top: 10,bottom: 10),
                       child: RichText(
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
                                     color: Colour.greyText,
                                     fontSize: 12),
                               ),

                             ]),
                       ),
                     ),




                     Container(
                       margin: const EdgeInsets.all(10),
                       width: 230,
                       height: 160,
                       decoration: BoxDecoration(
                           color: Colour.whiteApp,
                           borderRadius: BorderRadiusDirectional.circular(10)
                       ),
                       child: Center(child: Image.asset('assets/images/icon/code.png',width: 128,height: 128,fit: BoxFit.fill,)),
                     ),



                     RichText(
                       textAlign:TextAlign.center,
                       text:  TextSpan(
                           text:"Check your email ",
                           style: TextStyle(
                               overflow: TextOverflow.ellipsis,
                               fontFamily: "poppins_Reg",
                               color: Colour.greyText,
                               fontSize: 14),
                           children:  <TextSpan>[
                             TextSpan(
                               text:  "amierosie@yomail.com \n",
                               style: TextStyle(
                                   fontFamily: "poppins_Reg",
                                   color: Colour.pink,
                                   fontSize: 14),
                             ),
                             TextSpan(
                               text:  " in order to know how to get in the event",
                               style: TextStyle(
                                   fontFamily: "poppins_Reg",
                                   color: Colour.pink,
                                   fontSize: 14),
                             ),

                           ]),
                     ),




                     SizedBox(
                         width: double.infinity,
                         child: Image.asset('assets/images/line.png')),

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
                                     color: Colour.greyText,
                                     fontSize: 12),
                                 children:  <TextSpan>[
                                   TextSpan(
                                     text:  "19 May 2022",
                                     style: TextStyle(
                                         fontFamily: "poppins_Med",
                                         color: Colour.black,
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
                                     color: Colour.greyText,
                                     fontSize: 12),
                                 children:  <TextSpan>[
                                   TextSpan(
                                     text:  "4:30 PM",
                                     style: TextStyle(
                                         fontFamily: "poppins_Med",
                                         color: Colour.black,
                                         fontSize: 12),
                                   ),

                                 ]),
                           ),
                         ],
                       ),
                     ),

                     Container(
                       margin: const EdgeInsets.only(top: 10,bottom: 10,right: 8,left: 8),
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
                                     color: Colour.greyText,
                                     fontSize: 12),
                                 children:  <TextSpan>[
                                   TextSpan(
                                     text:  "2 Normal , 3 VIP",
                                     style: TextStyle(
                                         fontFamily: "poppins_Med",
                                         color: Colour.black,
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
                                     color: Colour.greyText,
                                     fontSize: 12),
                                 children:  <TextSpan>[
                                   TextSpan(
                                     text:  "2241 Townhall, Columbia",
                                     style: TextStyle(
                                         fontFamily: "poppins_Med",
                                         color: Colour.black,
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

               Container(
                 alignment: Alignment.center,
                 margin: const EdgeInsets.only(right: 15, left: 15, top: 50, bottom: 50),
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
                       child:
                       CommonFun.textBold("Rate Host", 16, TextAlign.center, color: Colour.white),
                     ),
                   ),
                   onTap: () {
                     Navigator.pop(context);
                   },
                 ),
               ),


             ],
           ),
         ),
      ),
    );
  }
}
