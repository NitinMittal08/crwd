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
                    CommonFun.textBold("Host Event", 16, TextAlign.start, color: Colour.black),
                  ],
                ),
              ),
            ),
            body: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Container(
                    margin: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CommonFun.textBold("Event Location Details", 18, TextAlign.start, color: Colour.black),

                        //textField
                        Container(
                          decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only( top: 50),
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
                              hintText: "Address",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),

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
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Country",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),


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
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "State",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),


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
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "City",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),


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
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Zip Code",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                          ),
                        ),




                        Expanded(child: Container(color: Colors.transparent)),
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
                ),
              ],
            )








        ));
  }
}
