import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';
import 'book_ticket.dart';
import 'organizer_profile.dart';
import 'organizer_reviews.dart';

class ExploreDetail extends StatefulWidget {
  const ExploreDetail({Key? key}) : super(key: key);

  @override
  State<ExploreDetail> createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  int currentTab = 0;

  List<String> imgList = [
    'assets/images/image_3.png',
    'assets/images/image_3.png',
    'assets/images/image_3.png',
    'assets/images/image_3.png',
    'assets/images/image_3.png',
    'assets/images/image_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colour.bgColor,
        iconTheme: IconThemeData(color: Colour.black),
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
              const SizedBox(width: 8),
              CommonFun.textBold('Explore detail', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(2),
              child: Image.asset('assets/images/icon/share.png', width: 20, height: 20, fit: BoxFit.fitWidth)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  SizedBox(
                    height: 220,
                    child: PageView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: imgList.length,
                        pageSnapping: true,
                        onPageChanged: (page) {
                          currentTab = page.toInt();
                          setState(() {});
                        },
                        itemBuilder: (context, pagePosition) {
                          return Container(
                            margin: const EdgeInsets.only(right: 2, left: 2),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(15),
                                  child: Image.asset(
                                    'assets/images/image_3.png',
                                    width: double.infinity,
                                    height: 250,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                SizedBox(
                                  height: 250,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(right: 25, left: 25),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
                                              child: Center(child: Image.asset('assets/images/like.png', height: 18)),
                                            ),
                                            Container(
                                                height: 58,
                                                width: 55,
                                                alignment: Alignment.center,
                                                decoration: BoxDecoration(
                                                    color: Colour.pink,
                                                    borderRadius:
                                                        const BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                                                child: Stack(
                                                  children: <Widget>[
                                                    // Stroked text as border.
                                                    Text(
                                                      '\$120',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        foreground: Paint()
                                                          ..style = PaintingStyle.stroke
                                                          ..strokeWidth = 1
                                                          ..color = Colour.black,
                                                      ),
                                                    ),
                                                    // Solid text as fill.
                                                    Text(
                                                      '\$120',
                                                      style: TextStyle(
                                                        fontSize: 18,
                                                        color: Colour.white,
                                                      ),
                                                    ),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 20, right: 5, left: 5),
                    child: PageViewDotIndicator(
                      currentItem: currentTab,
                      count: imgList.length,
                      size: const Size(50, 4),
                      unselectedSize: const Size(50, 4),
                      margin: const EdgeInsets.only(right: 1, left: 2),
                      duration: const Duration(milliseconds: 200),
                      boxShape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(5),
                      onItemClicked: (index) {},
                      unselectedColor: Colour.indicatorColor1,
                      selectedColor: Colour.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OrganizerProfile())),
                        child: SizedBox(
                          height: 35,
                          width: 35,
                          child: Center(child: Image.asset('assets/images/image_3.png', fit: BoxFit.fill, height: 18)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
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
                          InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OrganizerReviews())),
                            child: Row(
                              children: [
                                Image.asset('assets/images/icon/star.png', width: 12, height: 12, fit: BoxFit.fitHeight),
                                const SizedBox(width: 3),
                                CommonFun.textReg('4.2 (520reviews)', 12, TextAlign.start, color: Colour.greyText),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 30,
                    width: 85,
                    decoration: BoxDecoration(
                      color: Colour.pink,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: InkWell(
                      child: SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Center(
                            child: CommonFun.textMed("Follow", 12, TextAlign.center, color: Colour.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              CommonFun.textBold("Ayurvedic Consultation in Mansa, Punjab By Dr. Vikram Chauhan", 16, TextAlign.start, color: Colour.black),
              const SizedBox(height: 10),
              CommonFun.textReg(
                  "Lorem ips dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua dolor sit amet adipisci elit......",
                  12,
                  TextAlign.start,
                  color: Colour.greyText),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colour.white,
                  border: Border.all(
                    color: Colour.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colour.whiteApp,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colour.whiteApp,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(6), color: Colour.pink.withOpacity(.2)),
                        child: Center(
                            child: Image.asset(
                          'assets/images/icon/event_date.png',
                          width: 15,
                          height: 15,
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonFun.textReg("Thursday , Apr 13 2021", 14, TextAlign.start, color: Colour.greyText),
                            CommonFun.textReg("8:00pm-2:30am", 14, TextAlign.start, color: Colour.greyText),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colour.white,
                  border: Border.all(
                    color: Colour.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colour.whiteApp,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colour.whiteApp,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        width: 33,
                        height: 33,
                        decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(6), color: Colour.pink.withOpacity(.2)),
                        child: Center(
                            child: Image.asset(
                          'assets/images/icon/location.png',
                          width: 15,
                          height: 15,
                        )),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonFun.textReg("Thursday , Apr 13 2021", 14, TextAlign.start, color: Colour.greyText),
                            CommonFun.textReg("8:00pm-2:30am", 14, TextAlign.start, color: Colour.greyText),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  color: Colour.white,
                  border: Border.all(
                    color: Colour.white,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colour.whiteApp,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colour.whiteApp,
                      offset: const Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [


                          Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadiusDirectional.circular(50),
                                child: Image.asset('assets/images/image_3.png',width: 20,height: 20,fit: BoxFit.fill),
                              ),

                              Container(
                                transform: Matrix4.translationValues(5, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset('assets/images/onboard_screen/screen_three.png',width: 20,height: 20,fit: BoxFit.fill),
                                ),
                              ),

                              Container(
                                transform: Matrix4.translationValues(10, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset('assets/images/onboard_screen/screen_one.png',width: 20,height: 20,fit: BoxFit.fill),
                                ),
                              ),

                              Container(
                                transform: Matrix4.translationValues(15, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset('assets/images/onboard_screen/screen_three.png',width: 20,height: 20,fit: BoxFit.fill),
                                ),
                              ),

                              Container(
                                transform: Matrix4.translationValues(20, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset('assets/images/onboard_screen/screen_one.png',width: 20,height: 20,fit: BoxFit.fill),
                                ),
                              ),

                              Container(
                                transform: Matrix4.translationValues(25, 0, 0),
                                child: ClipRRect(
                                  borderRadius: BorderRadiusDirectional.circular(50),
                                  child: Image.asset('assets/images/onboard_screen/screen_two.png',width: 20,height: 20,fit: BoxFit.fill),
                                ),
                              ),
                            ],
                          ),






                          const SizedBox(width: 30),

                          RichText(
                            textAlign: TextAlign.start,
                            text: TextSpan(
                                text: "10k",
                                style: TextStyle(overflow: TextOverflow.ellipsis, fontFamily: "poppins_Bold", color: Colour.black, fontSize: 12),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: " intersted",
                                    style: TextStyle(fontFamily: "poppins_Bold", color: Colour.pink, fontSize: 12),
                                  ),
                                ]),
                          ),
                        ],
                      ),
                      CommonFun.textReg("295+ members are going", 10, TextAlign.start, color: Colour.greyText),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/icon/community.png',width: 22,height: 22,),
                    const SizedBox(width: 10),
                    CommonFun.textReg("Communicate with team", 14, TextAlign.center, color: Colour.greyText),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.only(right: 15, left: 15, top: 30, bottom: 30),
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
                      child: CommonFun.textBold("Buy Ticket", 16, TextAlign.center, color: Colour.white),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const BookTicket()));
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
