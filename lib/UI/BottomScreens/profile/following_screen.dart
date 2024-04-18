import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class FollowingScreen extends StatefulWidget {
  int tab;

  FollowingScreen({Key? key, required this.tab}) : super(key: key);

  @override
  State<FollowingScreen> createState() => _FollowingScreenState();
}

class _FollowingScreenState extends State<FollowingScreen> {
  int currentTab = 0;

  @override
  void initState() {
    super.initState();
    currentTab = widget.tab;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
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
              CommonFun.textBold('Amie Rosie', 16, TextAlign.start, color: Colour.black),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,



      ),
      body: Column(
        children: [
          // tab_bar
          const SizedBox(height: 10),
          Container(
            margin: const EdgeInsets.only(right: 15, left: 15),
            height: 50,
            decoration:
                BoxDecoration(border: Border.all(color: Colour.greyLine, width: 1), color: Colour.bgColor, borderRadius: BorderRadius.circular(30)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    currentTab = 0;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * .44,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: currentTab == 0 ? Colour.pink : Colour.bgColor, borderRadius: BorderRadius.circular(30)),
                      child: CommonFun.textBold('Follower', 16, TextAlign.center, color: currentTab == 0 ? Colour.white : Colour.pink),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    currentTab = 1;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width * .44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: currentTab == 1 ? Colour.pink : Colour.bgColor, borderRadius: BorderRadius.circular(30)),
                      child: CommonFun.textBold('Following', 16, TextAlign.center, color: currentTab == 1 ? Colour.white : Colour.pink),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          Container(
            alignment: Alignment.center,
            height: 50,
            margin: const EdgeInsets.only(right: 15, left: 15),
            child: Card(
              elevation: 0,
              color: Colour.white,
              shadowColor: Colour.greyLight,
              surfaceTintColor: Colour.greyLight,
              child: TextField(
                style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: "poppins_Reg",
                  color: Colour.black,
                ),
                keyboardType: TextInputType.visiblePassword,
                //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colour.grey,
                  ),
                  hintText: "Full Name",
                  labelStyle: const TextStyle(color: Colors.pink),
                ),
              ),
            ),
          ),

          if (currentTab == 0)
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  color: Colour.white,
                  margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  shadowColor: Colour.greyLight,
                  surfaceTintColor: Colour.greyLight,
                  child: Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/image_3.png',
                                      height: 41,
                                      width: 41,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CommonFun.textBold("Afshin", 14, TextAlign.start, color: Colour.black),
                                        CommonFun.textReg("2 mutual friend", 12, TextAlign.start, color: Colour.greyText),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * .2,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration:
                                        BoxDecoration(color: currentTab == 0 ? Colour.pink : Colour.bgColor, borderRadius: BorderRadius.circular(8)),
                                    child: CommonFun.textMed('Follow', 14, TextAlign.center, color: currentTab == 0 ? Colour.white : Colour.pink),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),

          if (currentTab == 1)
            Expanded(
                child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 0,
                  color: Colour.white,
                  margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  shadowColor: Colour.greyLight,
                  surfaceTintColor: Colour.greyLight,
                  child: Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/image_3.png',
                                      height: 41,
                                      width: 41,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CommonFun.textBold("Afshin", 14, TextAlign.start, color: Colour.black),
                                        CommonFun.textReg("2 mutual friend", 12, TextAlign.start, color: Colour.greyText),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              InkWell(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width * .22,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration:
                                        BoxDecoration(color: currentTab == 0 ? Colour.pink : Colour.bgColor, borderRadius: BorderRadius.circular(8)),
                                    child: CommonFun.textMed('unfollow', 14, TextAlign.center, color: currentTab == 0 ? Colour.white : Colour.pink),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )),
        ],
      ),
    ));
  }
}
