
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
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
              CommonFun.textBold('QR Code', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),

        elevation: 0,
        automaticallyImplyLeading: false,




        actions: [
          Center(
            child: Container(
              margin:   const EdgeInsets.only(right: 15),
              width: 50,
              height: 30,
              alignment: Alignment.center,
              child: CommonFun.textBold('Scan', 16, TextAlign.center,color: Colors.pink),
            ),
          )
        ],
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
                    flex: 9,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                          width: double.infinity,
                                          child: CommonFun.textBold('Amie Rosie', 16, TextAlign.center, color: Colour.black)),
                                      CommonFun.textReg('amierosie@yomail.com', 12, TextAlign.center, color: Colour.greyText),

                                      SizedBox(
                                        width: 128,height: 128,
                                        child: QrImageView(
                                          data: '1234567890',
                                          version: QrVersions.auto,
                                          size: 200.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),


                            Container(
                              transform: Matrix4.translationValues(0, -20, 0),
                              child: ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(50),
                                child: Image.asset('assets/images/image_3.png',width: 57,height: 57,fit: BoxFit.fill,),
                              ),
                            )
                          ],
                        ),

                        const SizedBox(height: 15),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "Anyone can use this code to add a friend. ",
                              style: TextStyle(overflow: TextOverflow.ellipsis, fontFamily: "poppins_Reg", color: Colour.black, fontSize: 12),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Learn More",
                                  style: TextStyle(fontFamily: "poppins_Reg", color: Colour.pink, fontSize: 12),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  ),




                  Expanded(flex: 1,

                      child: Center(
                        child: Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15,),
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
                            CommonFun.textBold("Share Code", 16, TextAlign.center, color: Colour.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                    ),
                  ),
                      )),

                ],
              ),
            ),
          ),
        ],
      )




    ));
  }
}