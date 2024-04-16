import 'package:crwd/UI/MainScreens/host_basic_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../values/colour.dart';
import '../../values/commonFun.dart';

class HostBasicOne extends StatefulWidget {
  const HostBasicOne({super.key});

  @override
  State<HostBasicOne> createState() => _HostBasicOneState();
}

class _HostBasicOneState extends State<HostBasicOne> {


  double _value1 = 30;
  bool status = false;

  int attendeesCount = 0;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colour.bgColor,
              title: CommonFun.textBold("Host Event", 16, TextAlign.start, color: Colour.black),
              leading: BackButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.black),
            ),
            body: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [

                  Container(
                    alignment: Alignment.centerLeft,
                      margin: const EdgeInsets.all(15),
                      child: CommonFun.textBold("Basic Information", 18, TextAlign.start, color: Colour.black)),

                  Container(
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(left: 15, right: 15 ),
                    child: TextField(
                      readOnly: true,
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 2.3,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        hintText: "Title",
                        labelStyle: TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), color: Colour.greyLight),
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 25),
                    child: TextField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        hintText: 'Description',
                        hintStyle: TextStyle(color: Colour.grey),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
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
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonFun.textBold('Age Minimum', 16, TextAlign.center, color: Colour.black),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: Slider(
                            activeColor: Colour.pink,
                            value: _value1,
                            max: 100,
                            divisions: 3,
                            label: _value1.round().toString(),
                            min: 1,
                            onChanged: (double value) async {
                              _value1 = value;
                              setState(() {});
                            },
                          ),
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
                        CommonFun.textMed("Live Music", 14, TextAlign.start, color: Colour.black),

                        FlutterSwitch(
                          activeColor: Colour.pink,
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
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonFun.textMed("Parking", 14, TextAlign.start, color: Colour.black),

                        FlutterSwitch(
                          activeColor: Colour.pink,
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
                    margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CommonFun.textMed("Byob", 14, TextAlign.start, color: Colour.black),

                        FlutterSwitch(
                          activeColor: Colour.pink,
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
                          child:
                          CommonFun.textBold("Next", 16, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HostBasicTwo()));
                      },
                    ),
                  ),






                ],
              ),
            )));
  }
}
