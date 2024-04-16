import 'package:flutter/material.dart';
import '../../values/colour.dart';
import '../../values/commonFun.dart';
import 'host_basic_3.dart';

class HostBasicTwo extends StatefulWidget {
  const HostBasicTwo({super.key});

  @override
  State<HostBasicTwo> createState() => _HostBasicTwoState();
}

class _HostBasicTwoState extends State<HostBasicTwo> {


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
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: <Widget>[
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.all(15),
                          child: CommonFun.textBold("Event Location Details", 18, TextAlign.start, color: Colour.black)),

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
                            hintText: "Address",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 15, right: 15 ,top: 15 ),
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
                            hintText: "Country",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 15, right: 15 ,top: 15),
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
                            hintText: "State",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 15, right: 15,top: 15 ),
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
                            hintText: "City",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),

                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 15, right: 15,top: 15),
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
                            hintText: "Zip Code",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),

                      Expanded(child: Container(color: Colors.transparent)),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15, top: 100, bottom: 20),
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
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const HostBasicThree()));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )








        ));
  }
}
