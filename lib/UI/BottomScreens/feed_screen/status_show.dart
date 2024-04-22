import 'dart:async';

import 'package:flutter/material.dart';
import 'package:page_view_dot_indicator/page_view_dot_indicator.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class StatusShow extends StatefulWidget {
  const StatusShow({super.key});

  @override
  State<StatusShow> createState() => _StatusShowState();
}

class _StatusShowState extends State<StatusShow> with SingleTickerProviderStateMixin {
  int currentTab = 0;
  List<String> imgList = [
    'assets/images/onboard_screen/screen_three.png',
    'assets/images/image_3.png',
    'assets/images/onboard_screen/screen_three.png',
    'assets/images/image_3.png',
    'assets/images/onboard_screen/screen_three.png',
    'assets/images/image_3.png',
  ];

  var controllerView = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.black,
      body:  Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            height: double.infinity,
            child: PageView.builder(
              controller: controllerView,
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
                        Center(
                          child: ClipRRect(
                            child: Image.asset(
                              imgList[pagePosition].toString(),
                              width: double.infinity,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Row(
            children: [
              Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                       if(currentTab+1 >= 2) {
                          --currentTab;
                          controllerView.previousPage(
                            duration: const Duration(milliseconds: 50),
                            curve: Curves.ease,
                          );
                        }else{
                         Navigator.pop(context);
                       }
                        setState(() {});
                      },
                    ),
                  )),

              Flexible(
                  flex: 1,
                  child: SizedBox(
                    height: double.infinity,
                    child: GestureDetector(
                      onTap: () {
                        if(currentTab < imgList.length-1) {
                          currentTab++;
                          controllerView.nextPage(
                            duration: const Duration(milliseconds: 50),
                            curve: Curves.ease,
                          );
                        }else{
                          Navigator.pop(context);
                        }
                        setState(() {});
                      },
                    ),
                  )),
            ],
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, right: 5, left: 5),
                child: PageViewDotIndicator(
                  currentItem: currentTab,
                  count: imgList.length,
                  size: const Size(50, 4),
                  unselectedSize: const Size(50, 4),
                  margin: const EdgeInsets.only(right: 1, left: 2),
                  duration: const Duration(milliseconds: 200),
                  boxShape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5),
                  unselectedColor: Colour.indicatorColor1,
                  selectedColor: Colour.white,
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.only(right: 15, left: 15, top: 20),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 50,
                          child: ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(50),
                            child: Image.asset(
                              'assets/images/onboard_screen/screen_three.png',
                              height: 50,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 5),
                          alignment: FractionalOffset.centerLeft,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CommonFun.textBold1(
                                'Jame Doe',
                                12,
                                TextAlign.start,
                                color: Colour.white,
                              ),
                              CommonFun.textMed('15 min', 12, TextAlign.start, color: Colour.white)
                            ],
                          ),
                        ),
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadiusDirectional.circular(50),
                      child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: Image.asset(
                            'assets/images/cancel.png',
                            height: 20,
                            width: 20,
                            fit: BoxFit.fill,
                            color: Colour.white,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }

}
