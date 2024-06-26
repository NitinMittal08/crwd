import 'package:crwd/UI/BottomScreens/profile/edit_profile.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../../values/commonFun.dart';

class EventDetail extends StatefulWidget {
  const EventDetail({super.key});

  @override
  State<EventDetail> createState() => _EventDetailState();
}

class _EventDetailState extends State<EventDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          SizedBox(width: double.infinity, height: 400, child: Image.asset('assets/images/onboard_screen/screen_two.png', fit: BoxFit.fill)),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(onTap: () => Navigator.pop(context), child: Icon(Icons.arrow_back, color: Colour.whiteApp)),

                Container(width: 25, height: 25, decoration: BoxDecoration(
                  color: Colour.white,
                  borderRadius: BorderRadiusDirectional.circular(5)
                ),
                  child:   Container( 
                    padding: const EdgeInsets.all(5),
                    child: Image.asset('assets/images/icon/share.png', width: 20, height: 20, fit: BoxFit.fitWidth,color: Colour.pink,)),)



              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * .65,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colour.white, borderRadius: const BorderRadiusDirectional.only(topEnd: Radius.circular(15), topStart: Radius.circular(15))),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 30,
                                width: 60,
                                decoration: BoxDecoration(
                                  color: Colour.pink,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(6.0),
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: SizedBox(
                                      child: Center(
                                        child: CommonFun.textReg("Music", 12, TextAlign.center, color: Colour.white),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                  margin: const EdgeInsets.only(top: 5),
                                  child: CommonFun.textMed('Sunday Sqool Comedy', 20, TextAlign.center, color: Colour.black)),
                            ],
                          ),
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colour.pink,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: InkWell(
                                child: SizedBox(
                                  child: Center(
                                    child: CommonFun.textMed("\$120", 18, TextAlign.center, color: Colour.white),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset(
                                    'assets/images/onboard_screen/screen_two.png',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.fill,
                                  )),



                              Container(
                                margin: const EdgeInsets.only(left: 5),
                                child: RichText(
                                  textAlign:TextAlign.start,
                                  text:  TextSpan(
                                      text:"Organized by ",
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontFamily: "poppins_Med",
                                          color: Colour.greyText,
                                          fontSize: 14),
                                      children:  <TextSpan>[
                                        TextSpan(
                                          text:  "Amie Rosie",
                                          style: TextStyle(
                                              fontFamily: "poppins_Med",
                                              color: Colour.black,
                                              fontSize: 14),
                                        ),

                                      ]),
                                ),
                              ),



                            ],
                          ),
                          SizedBox(
                            child: Center(
                              child:  Row(
                                children: [
                                  Image.asset('assets/images/icon/star.png', width: 12, height: 12, fit: BoxFit.fitHeight),
                                  const SizedBox(width: 3),
                                  CommonFun.textReg('4.2 (200)', 12, TextAlign.start, color: Colour.greyText),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Image.asset('assets/images/icon/calender.png',width: 16,height: 16,fit: BoxFit.fitWidth,color: Colour.greyText,),
                              Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: CommonFun.textMed('19 May 2022', 12, TextAlign.center, color: Colour.greyText)),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                            child: VerticalDivider(
                              color: Colour.divideLine,
                              thickness: 1,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time,
                                color: Colour.greyText,
                                size: 20,
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 5),
                                  child: CommonFun.textMed('8:00pm-2:30am', 12, TextAlign.center, color: Colour.greyText)),
                            ],
                          ),
                        ],
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/icon/location.png',width: 9,height: 13,),
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: CommonFun.textMed('2241 Townhall, Columbia Boulevard Sydeny- 5800', 12, TextAlign.center,
                                  color: Colour.greyText)),
                        ],
                      ),
                    ),



                    Container(
                      width: double.infinity,
                        margin: const EdgeInsets.all(15),
                        child: CommonFun.textBold1('Get Direction', 14, TextAlign.start, color: Colour.pink)),




                    Container(
                      margin: const EdgeInsets.only(right: 10,left: 10),
                      width: double.infinity,
                      child:   Divider(
                        color: Colour.divideLine,
                        thickness: 1,
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: CommonFun.textBold1('Who’s Going', 16, TextAlign.center,
                                  color: Colour.black )),
                          Container(
                              margin: const EdgeInsets.only(left: 5),
                              child: CommonFun.textBold1('See All', 12, TextAlign.center,
                                  color: Colour.pink )),
                        ],
                      ),
                    ),


                    ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      padding: const EdgeInsets.only(top: 5,bottom: 130),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 15,left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadiusDirectional.circular(50),
                                        child: Image.asset('assets/images/onboard_screen/screen_two.png',width: 26,height: 26,fit: BoxFit.fill)),
                                    Container(
                                      margin: const EdgeInsets.only(left: 5),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          CommonFun.textBold1('Amie', 14, TextAlign.center, color: Colour.black),
                                          CommonFun.textReg('Joined 10 hour ago', 8, TextAlign.center, color: Colour.black.withOpacity(.3)),
                                        ],
                                      ),
                                    )
                                  ],
                                ),


                                CommonFun.textReg('VIP', 10, TextAlign.center, color: Colour.greyText),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10,left: 10),
                            width: double.infinity,
                            child:   Divider(
                              color: Colour.divideLine,
                              thickness: 1,
                            ),
                          ),

                        ],
                      );
                    },)


                  ],
                ),
              ),
            ),
          ),



          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                Row(
                  children: [

                    Flexible(
                      flex: 1,
                      child: InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfile())),
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colour.grey, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                          child:  CommonFun.textBold1('Edit', 14, TextAlign.center, color: Colour.greyText),
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 1,
                      child: InkWell(
                        onTap: () async {
                          await showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (_) {
                              return deleteDialog();
                            },
                          );
                        },
                        child: Container(
                          height: 40,
                          alignment: Alignment.center,
                          width: double.infinity,
                          decoration: BoxDecoration(color: Colour.grey, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                          child:  CommonFun.textBold1('Delete', 14, TextAlign.center, color: Colour.greyText),
                        ),
                      ),
                    ),
                  ],
                ),


                Container(
                  height: 50,
                  margin: const EdgeInsets.all(20),
                  width: double.infinity,
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
                          child: CommonFun.textBold1("Scan QR Code", 16, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
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
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Image.asset('assets/images/icon/delete.png',width: 50),
                  ),
                ),
                const SizedBox(height: 20),
                CommonFun.textBold1('Delete Event', 20, TextAlign.center, color: Colour.blackNew1),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to delete \n this event', 12, TextAlign.center, color: Colour.greyText1),
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
                            child: CommonFun.textBold1("Cancel", 14, TextAlign.center, color: Colour.greyText),
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
                              child: CommonFun.textBold1("Delete", 14, TextAlign.center, color: Colour.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
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
