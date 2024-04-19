

import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class AddCard extends StatefulWidget {
  const AddCard({super.key});

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.whiteApp,
            appBar: AppBar(
                backgroundColor: Colour.whiteApp,
                iconTheme: IconThemeData(color: Colour.black),
               elevation: 0,
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
                      CommonFun.textBold('Add New Card', 16, TextAlign.start, color: Colour.black),
                    ],
                  ),
                ),
                automaticallyImplyLeading: false),
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      children: <Widget>[

                        Container(
                          decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only( top: 20),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14.0,
                              height: 1.0,
                              fontFamily: "poppins_Reg",
                              color: Colour.black,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                              suffixIcon:  Container(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset('assets/images/icon/Profile.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Card Holder Name",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),

                        //textField
                        Container(
                          decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only( top: 15),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14.0,
                              fontFamily: "poppins_Reg",
                              color: Colour.black,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                              suffixIcon:  Container(
                                  padding: const EdgeInsets.all(12),
                                  child: Image.asset('assets/images/icon/card_no.png',width: 12,height: 12,fit: BoxFit.fitWidth)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Card Number",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),

                        Row(
                          children: [

                            Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                                margin: const EdgeInsets.only(right: 10,left: 10,  top: 15),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.0,
                                    fontFamily: "poppins_Reg",
                                    color: Colour.black,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                    hintText: "Expiry Month",
                                    labelStyle: const TextStyle(color: Colors.pink),
                                  ),
                                ),
                              ),
                            ),

                            Flexible(
                              flex: 1,
                              child: Container(
                                decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                                margin: const EdgeInsets.only(right: 10,left: 10,  top: 15),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    height: 1.0,
                                    fontFamily: "poppins_Reg",
                                    color: Colour.black,
                                  ),
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                    hintText: "Expiry Year",
                                    labelStyle: const TextStyle(color: Colors.pink),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only(  top: 15),
                          child: TextField(
                            style: TextStyle(
                              fontSize: 14.0,
                              height: 1.0,
                              fontFamily: "poppins_Reg",
                              color: Colour.black,
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "CVV",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),




                        Expanded(child: Container(color: Colors.transparent)),
                        Container(
                          margin: const EdgeInsets.all(10),
                          alignment: Alignment.center,
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
                                child: CommonFun.textBold("Save Card", 16, TextAlign.center, color: Colour.white),
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
              ],
            )
        ));
  }

}
