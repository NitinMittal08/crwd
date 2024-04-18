

import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class OrganizerProfile extends StatefulWidget {
  const OrganizerProfile({Key? key}) : super(key: key);

  @override
  State<OrganizerProfile> createState() => _OrganizerProfileState();
}

class _OrganizerProfileState extends State<OrganizerProfile> {

  final ScrollController _scrollController = ScrollController();

  String qw ='It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English.';
  int currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            iconTheme: IconThemeData(color: Colour.black),
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
                  const SizedBox(width: 10),
                  CommonFun.textBold('Organizer Profile', 16, TextAlign.center, color: Colour.black),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [

                Card(
                  elevation: 1,
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                          ),

                          Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [


                              Container(
                                  margin: const EdgeInsets.only(top: 8, left: 10),
                                  child: CommonFun.textBold(
                                      'Amie Rosie', 16, TextAlign.center, color: Colour.black)),
                              Container(
                                  margin: const EdgeInsets.only(left: 10),
                                  child: Row(
                                    children: [
                                      Image.asset('assets/images/icon/location.png', width: 9, height: 13, fit: BoxFit.fill,),
                                      const SizedBox(width: 3),
                                      Container(
                                        width: MediaQuery.of(context).size.width*.55,
                                        child: CommonFun.textReg1(
                                            '2241 Townhall, Columbia Boulevard', 12, TextAlign.start, color: Colour.greyText),
                                      ),
                                    ],
                                  )),
                              Container(
                                margin: const EdgeInsets.only(left: 10),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/icon/start1.png', width: 11, height: 11, fit: BoxFit.fill,),
                                        const SizedBox(width: 3),
                                        CommonFun.textReg('50 Events', 12, TextAlign.center, color: Colour.greyText),





                                      ],
                                    ),
                                    const SizedBox(width: 10),
                                    Row(
                                      children: [
                                        Image.asset('assets/images/icon/star.png', width: 12, height: 12, fit: BoxFit.fitHeight),
                                        const SizedBox(width: 3),
                                        CommonFun.textReg('4.2', 12, TextAlign.start, color: Colour.greyText),
                                      ],
                                    ),
                                  ],
                                ),
                              ),


                              Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 85,
                                margin: const EdgeInsets.only(top: 3, left: 10),
                                decoration: BoxDecoration(
                                  color:Colour.pink,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(5.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: InkWell(
                                    child: SizedBox(
                                      width: 50,
                                      child: Center(
                                        child: CommonFun.textMed("Follow", 12, TextAlign.center,
                                            color:Colour.bgColor),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentTab =1;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),


                        ]),
                  ),
                ),


                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [


                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10,bottom: 10),
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color:currentTab == 1 ?Colour.pink: Colour.bgColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              child: Center(
                                child: CommonFun.textBold("Events", 14, TextAlign.center,
                                    color:currentTab == 1 ?Colour.bgColor :Colour.pink),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentTab =1;
                            });
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10,bottom: 10),
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color:currentTab == 2? Colour.pink:Colour.bgColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              child: Center(
                                child: CommonFun.textBold("Past", 14, TextAlign.center,
                                    color:currentTab ==2 ?Colour.bgColor :Colour.pink),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentTab =2;
                            });
                          },
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.only(top: 10,bottom: 10),
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color:currentTab == 3?Colour.pink:Colour.bgColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SizedBox(
                              width: 100,
                              child: Center(
                                child: CommonFun.textBold("About", 14, TextAlign.center,
                                    color:currentTab == 3? Colour.bgColor:Colour.pink),
                              ),
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              currentTab =3;
                            });
                          },
                        ),
                      ),
                    ),
                  ],
                ),


                Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: currentTab ==3 ? 1: 6,
                    itemBuilder: (BuildContext context, int index) {
                      return   (currentTab ==1)
                          ? Card(
                        elevation: 1,
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                        ),

                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colour.white,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(3.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child:  CommonFun.textReg('20 Apr,2022', 8, TextAlign.center, color: Colour.pink),
                                          ),
                                        ),
                                      ],
                                    ),


                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: const EdgeInsets.only(top: 8, left: 10),
                                          height: 25,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colour.pink,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(6.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: SizedBox(
                                              child: Center(
                                                child: CommonFun.textReg("Music", 10, TextAlign.center, color: Colour.white),
                                              ),
                                            ),
                                          ),
                                        ),


                                        Container(
                                            width: 180,
                                            margin: const EdgeInsets.only(top: 3, left: 10),
                                            child: CommonFun.textBold(
                                                'Amie Rosie', 16, TextAlign.start, color: Colour.black)),





                                        Container(
                                          width: 180,
                                          margin: EdgeInsets.only( left: 10),
                                          child: RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                                text: "Organized by ",
                                                style: TextStyle(overflow: TextOverflow.ellipsis, fontFamily: "poppins_Med", color: Colour.greyText, fontSize: 12),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: "Amie Rosie",
                                                    style: TextStyle(fontFamily: "poppins_Med", color: Colour.black, fontSize: 12),
                                                  ),
                                                ]),
                                          ),
                                        ),


                                        Container(
                                            width: 180,
                                            margin: const EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                Image.asset('assets/images/icon/location.png', width: 9, height: 13, fit: BoxFit.fill,),
                                                const SizedBox(width: 3),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*.46,
                                                  child: CommonFun.textReg1(
                                                      '2241 Townhall, Columbia Boulevard', 12, TextAlign.start, color: Colour.greyText),
                                                ),
                                              ],
                                            )),



                                      ],
                                    ),
                                  ],
                                ),


                                SizedBox(
                                  height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                      Container(
                                          child: CommonFun.textBold(
                                              '\$200', 12, TextAlign.center, color: Colour.pink)),
                                    ],
                                  ),
                                ),

                              ]),
                        ),
                      )
                          :(currentTab ==2)
                          ? Card(
                        elevation: 1,
                        shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                        ),

                                        Container(
                                          margin: const EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color: Colour.white,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(3.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(1.0),
                                            child:  CommonFun.textReg('20 Apr,2022', 8, TextAlign.center, color: Colour.pink),
                                          ),
                                        ),
                                      ],
                                    ),


                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Container(
                                          margin: const EdgeInsets.only(top: 8, left: 10),
                                          height: 25,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colour.pink,
                                            borderRadius: const BorderRadius.all(
                                              Radius.circular(6.0),
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: SizedBox(
                                              child: Center(
                                                child: CommonFun.textReg("Music", 10, TextAlign.center, color: Colour.white),
                                              ),
                                            ),
                                          ),
                                        ),


                                        Container(
                                            width: 180,
                                            margin: const EdgeInsets.only(top: 3, left: 10),
                                            child: CommonFun.textBold(
                                                'Amie Rosie', 16, TextAlign.start, color: Colour.black)),





                                        Container(
                                          width: 180,
                                          margin: EdgeInsets.only( left: 10),
                                          child: RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                                text: "Organized by ",
                                                style: TextStyle(overflow: TextOverflow.ellipsis, fontFamily: "poppins_Med", color: Colour.greyText, fontSize: 12),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: "Amie Rosie",
                                                    style: TextStyle(fontFamily: "poppins_Med", color: Colour.black, fontSize: 12),
                                                  ),
                                                ]),
                                          ),
                                        ),


                                        Container(
                                            width: 180,
                                            margin: const EdgeInsets.only(left: 10),
                                            child: Row(
                                              children: [
                                                Image.asset('assets/images/icon/location.png', width: 9, height: 13, fit: BoxFit.fill,),
                                                const SizedBox(width: 3),
                                                Container(
                                                  width: MediaQuery.of(context).size.width*.46,
                                                  child: CommonFun.textReg1(
                                                      '2241 Townhall, Columbia Boulevard', 12, TextAlign.start, color: Colour.greyText),
                                                ),
                                              ],
                                            )),



                                      ],
                                    ),
                                  ],
                                ),


                                SizedBox(
                                  height: 80,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [

                                      Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                      Container(
                                          child: CommonFun.textBold(
                                              '\$200', 12, TextAlign.center, color: Colour.pink)),
                                    ],
                                  ),
                                ),

                              ]),
                        ),
                      )
                          :(currentTab ==3)
                          ?Column(
                          children: [
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Card(
                                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                                  elevation: 1,
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 100,
                                    height: 88,
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      textAlign:TextAlign.center,
                                      text:  TextSpan(
                                          text:"15k \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Bold",
                                              color: Colour.pink,
                                              fontSize: 20),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "Ticket Sold",
                                              style: TextStyle(
                                                  fontFamily: "poppins_Bold",
                                                  color: Colour.black,
                                                  fontSize: 14),
                                            ),

                                          ]),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                                  elevation: 1,
                                  child: Container(
                                    width: 100,
                                    alignment: Alignment.center,
                                    height: 88,
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      textAlign:TextAlign.center,
                                      text:  TextSpan(
                                          text:"150k \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Bold",
                                              color: Colour.pink,
                                              fontSize: 20),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "Followers",
                                              style: TextStyle(
                                                  color: Colour.black,
                                                  fontFamily: "poppins_Bold",
                                                  fontSize: 14),
                                            ),

                                          ]),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                                  elevation: 1,
                                  child: Container(
                                    width: 100,
                                    height: 88,
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(8.0),
                                    child: RichText(
                                      textAlign:TextAlign.center,
                                      text:  TextSpan(
                                          text:"15k \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Bold",
                                              color: Colour.pink,
                                              fontSize: 20),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "Event",
                                              style: TextStyle(
                                                  fontFamily: "poppins_Bold",
                                                  color: Colour.black,
                                                  fontSize: 14),
                                            ),

                                          ]),
                                    ),
                                  ),
                                ),
                              ],
                            ),


                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CommonFun.textMed(qw, 14, TextAlign.start, color: Colour.greyText),
                            )
                          ]
                      )
                          : const SizedBox();

                    },
                  ),
                ),
              ],
            ),
          )
        )
    );
  }
}

