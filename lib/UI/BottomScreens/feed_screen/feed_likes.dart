

import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class FeedLikes extends StatefulWidget {
  const FeedLikes({Key? key}) : super(key: key);

  @override
  State<FeedLikes> createState() => _FeedLikesState();
}

class _FeedLikesState extends State<FeedLikes> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
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
                CommonFun.textBold('Like', 16, TextAlign.start, color: Colour.black),
              ],
            ),
          ),
          automaticallyImplyLeading: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


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



          Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
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
                                      BoxDecoration(color: index==2 ||index== 0?   Colour.greyTextField :Colour.pink , borderRadius: BorderRadius.circular(8)),
                                      child: CommonFun.textMed(
                                          index==2 ||index== 0?
                                          'Following':'Follow', 14, TextAlign.center, color:  index==2 ||index== 0?  Colour.greyText :Colour.greyTextField),
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
