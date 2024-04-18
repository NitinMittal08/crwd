import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:crwd/UI/signup/onboardScreen/last_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {


  final CarouselController _carouselController = CarouselController();
  int currentTab =0;




  @override
  Widget build(BuildContext context) {

    final List<Widget> imgList = [

      Container(
        decoration: BoxDecoration(
          color: Colour.white,
          borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CommonFun.textBold('Welcome to \n Event Organizer App', 20, TextAlign.center, color: Colors.black),
            CommonFun.textMed('Refrence site about loreum lspum,giving information origins', 16, TextAlign.center, color: Colors.black),

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 30, left: 30),
              width: double.infinity,
              height: 50,
              decoration:  BoxDecoration(
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
                    child: CommonFun.textBold(
                        "Next"
                        , 16, TextAlign.center, color: Colour.white),
                  ),
                ),
                onTap: (){
                  setState(() {
                      _carouselController.nextPage();
                  });
                },
              ),
            ),



          ],
        ),
      ),

      Container(
        decoration: BoxDecoration(
            color: Colour.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CommonFun.textBold('Unlimites \n Event Explore', 20, TextAlign.center, color: Colors.black),
            CommonFun.textMed('Refrence site about loreum lspum,giving information origins', 16, TextAlign.center, color: Colors.black),

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 30, left: 30),
              width: double.infinity,
              height: 50,
              decoration:  BoxDecoration(
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
                    child: CommonFun.textBold(
                        "Next"
                        , 16, TextAlign.center, color: Colour.white),
                  ),
                ),
                onTap: (){
                  setState(() {
                    _carouselController.nextPage();
                  });
                },
              ),
            ),



          ],
        ),
      ),

      Container(
        decoration: BoxDecoration(
            color: Colour.white,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CommonFun.textBold('Easy to Buy \n and Sell Ticket', 20, TextAlign.center, color: Colors.black),
            CommonFun.textMed('Refrence site about loreum lspum,giving information origins', 16, TextAlign.center, color: Colors.black),

            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 30, left: 30),
              width: double.infinity,
              height: 50,
              decoration:  BoxDecoration(
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
                    child: CommonFun.textBold(
                        "Get Started"
                        , 16, TextAlign.center, color: Colour.white),
                  ),
                ),
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LastScreen()));
                },
              ),
            ),



          ],
        ),
      ),

    ];



    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.bgColor,
            body: Stack(
              children: [
                Column(
                  children: [
                    Expanded(
                        flex: 4,
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 50),
                          child: Image.asset(
                            currentTab ==0
                                ? 'assets/images/onboard_screen/screen_one.png'
                                :currentTab ==1
                                ? 'assets/images/onboard_screen/screen_two.png'
                                :currentTab ==2
                                ? 'assets/images/onboard_screen/screen_three.png'
                                : 'assets/images/onboard_screen/screen_one.png',
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            PageViewDotIndicator(
                              currentItem: currentTab,
                              count: 3,

                              size: const Size(25, 6),
                              unselectedSize:  const Size(25, 6),

                              margin: const EdgeInsets.only(right: 1,left: 2),
                              duration: const Duration(milliseconds: 200),
                              boxShape: BoxShape.rectangle,
                              
                              borderRadius: BorderRadius.circular(5),
                              onItemClicked: (index) {
                              }, unselectedColor: Colour.indicatorColor, selectedColor: Colour.pink,
                            ),

                            const SizedBox(height: 25,),
                            InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const LastScreen())),
                              child: CommonFun.textBold(
                                  "Skip"
                                  , 16, TextAlign.center, color: Colour.black),
                            )
                          ],
                        ),


                    ),
                  ],
                ),




                Container(
                  margin:const EdgeInsets.only(top: 50),
                  child: Align(
                    alignment: Alignment.center,
                    child: CarouselSlider(
                        items: imgList,
                        carouselController: _carouselController,
                        options: CarouselOptions(
                          height: 250,
                          aspectRatio: 16/9,
                          viewportFraction: 0.8,
                          initialPage: 0,
                          enableInfiniteScroll: false,
                          reverse: false,
                          autoPlay: false,
                          autoPlayAnimationDuration: const Duration(milliseconds: 100),
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enlargeCenterPage: true,
                          enlargeFactor: 0.3,
                          scrollDirection: Axis.horizontal,
                          onScrolled: (value) {
                            currentTab = value!.toInt();
                            setState(() { });
                          },
                        )
                    ),
                  ),
                )
              ],
            )));
  }
}
