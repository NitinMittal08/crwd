import 'package:crwd/UI/BottomScreens/explore_event/payment_screen/check_out1.dart';
import 'package:flutter/material.dart';

import '../../../../values/colour.dart';
import '../../../../values/commonFun.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  bool isSelected = false;
  bool isSelectedPayPal = false;
  bool checkBoxTick = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colour.black),
            backgroundColor: Colour.bgColor,
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
                  CommonFun.textBold1('Check Out', 16, TextAlign.center, color: Colour.black),
                ],
              ),
            ),
            elevation: 0,
            automaticallyImplyLeading: false,
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 10, left: 8, right: 8),
                      child: CommonFun.textBold1('Payment Method', 16, TextAlign.start, color: Colour.black)),
                  Container(
                    decoration: BoxDecoration(borderRadius: const BorderRadiusDirectional.only(topStart: Radius.circular(15),topEnd:Radius.circular(15) ), border: Border.all(color: Colour.divideLine)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15,bottom: 15),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        isSelected = !isSelected;
                                        isSelectedPayPal =false;
                                        setState(() { });
                                      },
                                      child: Image.asset(!isSelected ? 'assets/images/icon/radio_off.png' : 'assets/images/icon/radio_on.png',
                                          width: 15, height: 15),
                                    ),
                                    const SizedBox(width: 8),
                                    CommonFun.textReg('Credit or Debit Card', 12, TextAlign.start, color: Colour.black)
                                  ],
                                ),
                                Image.asset('assets/images/profile/payment.png', width: 26, height: 18)
                              ],
                            ),
                          ),

                          if(isSelected)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                                margin: const EdgeInsets.only( top: 10),
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
                                        padding: const EdgeInsets.all(15),
                                        child: Image.asset('assets/images/icon/Profile.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                                    hintText: "Card Holder Name",
                                    labelStyle: const TextStyle(color: Colors.pink),
                                  ),
                                ),
                              ),

                              //textField
                              Container(
                                decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                                margin: const EdgeInsets.only(top: 8),
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
                                        padding: const EdgeInsets.all(14),
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
                                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                                      margin: const EdgeInsets.only(top: 8),
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 14.0,
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

                                  const SizedBox(width: 10),
                                  Flexible(
                                    flex: 1,
                                    child: Container(
                                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                                      margin: const EdgeInsets.only(top: 8),
                                      child: TextField(
                                        style: TextStyle(
                                          fontSize: 14.0,
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
                                decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                                margin: const EdgeInsets.only(  top: 8),
                                child: TextField(
                                  style: TextStyle(
                                    fontSize: 14.0,
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
                            ],
                          ),


                        ],
                      ),
                    ),
                  ),



                  Container(
                    decoration: BoxDecoration(borderRadius: const BorderRadiusDirectional.only(bottomEnd: Radius.circular(15),bottomStart:Radius.circular(15) ), border: Border.all(color: Colour.divideLine)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15,bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 8, left: 8),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          isSelectedPayPal = !isSelectedPayPal;
                                          isSelected = false;
                                          setState(() { });
                                        },
                                        child: Image.asset(!isSelectedPayPal ? 'assets/images/icon/radio_off.png' : 'assets/images/icon/radio_on.png',
                                            width: 15, height: 15),
                                      ),
                                      const SizedBox(width: 8),
                                      CommonFun.textReg('PayPal', 12, TextAlign.start, color: Colour.black)
                                    ],
                                  ),
                                ),
                                Image.asset('assets/images/profile/paypay.png', width: 26, height: 18)
                              ],
                            ),
                          ),


                          if(isSelectedPayPal)
                          Column(
                            children: [
                              Container(
                                  margin: const EdgeInsets.only(top: 8, bottom: 8, left: 20, right: 20),
                                  child: CommonFun.textReg('Sign into your PayPal account to complete your Purchase', 12, TextAlign.start, color: Colour.greyText)),

                              Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 25, left: 25, top: 25, bottom: 25),
                                width: double.infinity,
                                height: 40,
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
                                      CommonFun.textBold1("PayPal", 16, TextAlign.center, color: Colour.white),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),




                  Container(
                      margin: const EdgeInsets.only(top: 15, bottom: 10, left: 8, right: 8),
                      child: CommonFun.textBold1('Saved Card', 16, TextAlign.start, color: Colour.black)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), border: Border.all(color: Colour.divideLine, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  /* 1 !=index
                                  ? 'assets/images/icon/radio_off.png'
                                  : */
                                    'assets/images/icon/radio_on.png',
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.fill),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CommonFun.textReg('**** **** ****2020', 14, TextAlign.center, color: Colour.black),
                                      CommonFun.textReg('Expiry Month : 10', 12, TextAlign.center, color: Colour.greyText),
                                      CommonFun.textReg('Expiry Year : 2026', 12, TextAlign.center, color: Colour.greyText),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/profile/payment.png', width: 26, height: 18)
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), border: Border.all(color: Colour.divideLine, width: 1)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  /* 1 !=index
                                  ? 'assets/images/icon/radio_off.png'
                                  : */
                                    'assets/images/icon/radio_on.png',
                                    width: 15,
                                    height: 15,
                                    fit: BoxFit.fill),
                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CommonFun.textReg('**** **** ****2020', 14, TextAlign.center, color: Colour.black),
                                      CommonFun.textReg('Expiry Month : 10', 12, TextAlign.center, color: Colour.greyText),
                                      CommonFun.textReg('Expiry Year : 2026', 12, TextAlign.center, color: Colour.greyText),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/images/profile/payment.png', width: 26, height: 18)
                          ],
                        ),
                      ),
                    ),
                  ),





                  Container(
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 15, bottom: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         InkWell(
                           onTap: () {
                             checkBoxTick =!checkBoxTick;
                             setState(() { });
                           },
                           child: Stack(
                             alignment: Alignment.center,
                             children: [
                             Image.asset('assets/images/profile/check_bg.png',width: 18,height: 18,color: checkBoxTick ? Colour.pink: Colour.divideLine,),
                             if(checkBoxTick)
                             Image.asset('assets/images/profile/check_tick.png',width: 12,height: 9)
                             ],
                           ),
                         ),
                         const SizedBox(width: 10),
                         CommonFun.textReg('Save card for future use ', 14, TextAlign.center, color: Colour.black),
                       ],
                    ),
                  ),

                  if(!isSelectedPayPal)
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 100, bottom: 50),
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
                          CommonFun.textBold1("Pay Now", 16, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckOut1()));
                      },
                    ),
                  ),


                ],
              ),
            ),
          ),
        ));
  }
}
