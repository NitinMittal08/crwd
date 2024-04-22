import 'package:crwd/UI/MainScreens/host_basic_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

import '../../values/colour.dart';
import '../../values/commonFun.dart';

class HostBasicOne extends StatefulWidget {
  const HostBasicOne({super.key});

  @override
  State<HostBasicOne> createState() => _HostBasicOneState();
}

class _HostBasicOneState extends State<HostBasicOne> {


  bool status = false;
  double _lowerValue = 18;
  double _upperValue = 18;

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
                    CommonFun.textBold1('Host Event', 16, TextAlign.center, color: Colour.black),
                  ],
                ),
              ),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    CommonFun.textBold1("Basic Information", 18, TextAlign.start, color: Colour.black),
 

                    //textField
                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 20),
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
                          hintText: "Title",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),


                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 20),
                      child: TextField(
                        maxLines: 6,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Description",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonFun.textMed("Number of Attendees", 14, TextAlign.start, color: Colour.black),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  if(attendeesCount > 0) {
                                    attendeesCount--;
                                  }
                                  setState(() { });
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
                                  setState(() { });
                                },
                                child: Container(
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.center,
                                  decoration:
                                      BoxDecoration(border: Border.all(color: Colour.black, width: 1), borderRadius: BorderRadiusDirectional.circular(50)),
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
                      margin: const EdgeInsets.only(top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CommonFun.textBold1('Age Minimum', 16, TextAlign.center, color: Colour.black),

                          Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              Container(
                                  alignment: Alignment.centerLeft,decoration:  BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(10)
                              ),
                                  child: FlutterSlider(
                                    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
                                    values: [_lowerValue, _upperValue],
                                    rangeSlider: true,
                                    max: 50,
                                    min: 18,
                                    trackBar: FlutterSliderTrackBar(
                                        inactiveTrackBar: BoxDecoration(
                                      color: Colour.greyText,borderRadius: BorderRadiusDirectional.circular(10)

                                    ),
                                    activeTrackBar: BoxDecoration(color: Colour.pink),
                                      inactiveTrackBarHeight: 7,
                                      activeTrackBarHeight: 7,
                                    ),
                                    disabled: false,

                                    handler: customHandler(_lowerValue.toString()),
                                    rightHandler: customHandler(_upperValue.toString()),
                                    step: const FlutterSliderStep(step: 4),
                                    jump: true,
                                    tooltip: FlutterSliderTooltip(
                                      alwaysShowTooltip: Paint.enableDithering,
                                      textStyle: const TextStyle(fontSize: 17, color: Colors.black45),
                                    ),

                                    onDragging: (handlerIndex, lowerValue, upperValue) {
                                      _lowerValue = lowerValue;
                                      _upperValue = upperValue;
                                      setState(() {});
                                    },
                                  )),
                              Container(
                                margin: const EdgeInsets.only(right: 15,left: 15,bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CommonFun.textReg('18', 12, TextAlign.center, color: Colour.black),
                                    CommonFun.textReg('50', 12, TextAlign.center, color: Colour.black),
                                  ],
                                ),
                              )
                            ],
                          ),



                        ],
                      ),
                    ),





                    Container(
                      margin: const EdgeInsets.only( top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonFun.textMed("Live Music", 12, TextAlign.start, color: Colour.black),

                          FlutterSwitch(
                            activeColor: Colour.pink,
                            inactiveColor: Colour.divideLine,
                            width: 35.0,
                            height: 20.0,
                            toggleSize: 20.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 1.0,
                            showOnOff: false,
                            onToggle: (val) {
                              setState(() {
                                status = val;


                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only( top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonFun.textMed("Parking", 12, TextAlign.start, color: Colour.black),

                          FlutterSwitch(
                            activeColor: Colour.pink,
                            inactiveColor: Colour.divideLine,
                            width: 35.0,
                            height: 20.0,
                            toggleSize: 20.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 1.0,
                            showOnOff: false,
                            onToggle: (val) {
                              setState(() {
                                status = val;


                              });
                            },
                          ),

                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CommonFun.textMed("Byob", 12, TextAlign.start, color: Colour.black),

                          FlutterSwitch(
                            activeColor: Colour.pink,
                            inactiveColor: Colour.divideLine,
                            width: 35.0,
                            height: 20.0,
                            toggleSize: 20.0,
                            value: status,
                            borderRadius: 30.0,
                            padding: 1.0,
                            showOnOff: false,
                            onToggle: (val) {
                              setState(() {
                                status = val;


                              });
                            },
                          ),

                        ],
                      ),
                    ),



                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(  top: 100, bottom: 20),
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
                            CommonFun.textBold1("Next", 16, TextAlign.center, color: Colour.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const HostBasicTwo()));
                        },
                      ),
                    ),






                  ],
                ),
              ),
            )));
  }



  customHandler(String value ) {
    return FlutterSliderHandler(
      decoration: const BoxDecoration(),
      child: Stack(
        alignment: Alignment.center,
        children: [


          Container(
            width: 12,height: 12,
            decoration: BoxDecoration(
              color: Colour.white,
              borderRadius: BorderRadiusDirectional.circular(50),
             border: Border.all(color: Colour.pink,width: 2)
            ),
          ),

          Container(
              transform: Matrix4.translationValues(0, -20, 0),
              child: CommonFun.textReg(value, 12, TextAlign.center, color: Colour.black)),
          Container(
              transform: Matrix4.translationValues(0, -20, 0),
              child: CommonFun.textReg(value, 12, TextAlign.center, color: Colour.black)),

        ],
      ),
    );
  }
}
