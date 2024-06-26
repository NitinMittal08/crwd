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
              CommonFun.textBold1('Amie Rosie', 16, TextAlign.start, color: Colour.black),
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
                BoxDecoration(border: Border.all(color: Colour.divideLine, width: 1), color: Colour.bgColor, borderRadius: BorderRadius.circular(30)),
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
                      child: CommonFun.textBold1('Follower', 16, TextAlign.center, color: currentTab == 0 ? Colour.white : Colour.greyText),
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
                      child: CommonFun.textBold1('Following', 16, TextAlign.center, color: currentTab == 1 ? Colour.white : Colour.greyText),
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(
                color: Colour.whiteApp,
                borderRadius: BorderRadiusDirectional.circular(10)
            ),
            alignment: Alignment.center,
            height: 45,
            margin: const EdgeInsets.only(right: 15, left: 15),
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
                hintText: "Search here....",
                labelStyle: const TextStyle(color: Colors.pink),
              ),
            ),
          ),

          if (currentTab == 0)
            Expanded(
                child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                  elevation: 0,
                  color: Colour.white,
                  shadowColor: Colour.greyLight,
                  surfaceTintColor: Colour.greyLight,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                        CommonFun.textBold1("Afshin", 14, TextAlign.start, color: Colour.black),
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
                        ],
                      ),
                    ),
                  ),
                );
              },
            )),

          if (currentTab == 1)
            Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return Card(
                      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                      elevation: 0,
                      color: Colour.white,
                      shadowColor: Colour.greyLight,
                      surfaceTintColor: Colour.greyLight,
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
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
                                            CommonFun.textBold1("Afshin", 14, TextAlign.start, color: Colour.black),
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
                                        BoxDecoration(color:   Colour.pink  , borderRadius: BorderRadius.circular(8)),
                                        child: CommonFun.textMed('Unfollow', 14, TextAlign.center, color:   Colour.white ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
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
