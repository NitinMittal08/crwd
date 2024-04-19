
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';
import '../../MainScreens/main_page.dart';

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
                       height: 230,
                       decoration: BoxDecoration(
                           color: Colour.whiteApp,
                           borderRadius: BorderRadiusDirectional.circular(10)
                       ),
                       child: Center(child:
                       QrImageView(
                         data: '1234567890',
                         version: QrVersions.auto,
                         size: 200.0,
                       ),
                       ),
                     ),



                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         children: [
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




                   ],
                 ),
               ),

               Container(
                 alignment: Alignment.center,
                 margin: const EdgeInsets.only(right: 15, left: 15, top: 50, bottom: 20),
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
                       CommonFun.textBold("Cancel Ticket", 16, TextAlign.center, color: Colour.white),
                     ),
                   ),
                   onTap: () async {
                     await showDialog(
                       context: context,
                       barrierDismissible: true,
                       builder: (_) {
                         return deleteDialog();
                       },
                     );
                   },
                 ),
               ),


             ],
           ),
         ),
      ),
    );
  }






  Widget deleteDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: StatefulBuilder(builder: (BuildContext context, StateSetter myState) {
        return Container(
          decoration: BoxDecoration(
              color: Colour.whiteApp,
              borderRadius: BorderRadiusDirectional.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                SizedBox(
                  height: 105,
                  width: 105,
                  child: Center(
                    child: Image.asset('assets/images/icon/tick.png',width: 105),
                  ),
                ),
                const SizedBox(height: 20),
                CommonFun.textBold('Cancel Ticket', 20, TextAlign.center, color: Colour.blackNew1),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to cancel \n the ticket', 12, TextAlign.center, color: Colour.greyText1),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration:  BoxDecoration(
                        color: Colour.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: SizedBox(
                          child: Center(
                            child: CommonFun.textBold("No", 14, TextAlign.center, color: Colour.greyText),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colour.pink,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          child: SizedBox(
                            child: Center(
                              child: CommonFun.textBold("Yes", 14, TextAlign.center, color: Colour.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage(index: 2)));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      }),
    );
  }


}
