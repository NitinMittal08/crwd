
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class FeedComments extends StatefulWidget {
  const FeedComments({Key? key}) : super(key: key);

  @override
  State<FeedComments> createState() => _FeedCommentsState();
}

class _FeedCommentsState extends State<FeedComments> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colour.black),
          backgroundColor: Colour.bgColor,
          title: CommonFun.textBold('Comment', 16, TextAlign.start, color: Colour.black),
          automaticallyImplyLeading: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [



          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  color: Colour.greyLight,
                  margin:const EdgeInsets.only(top: 10,right: 10,left: 10),
                  shadowColor: Colour.greyLight,
                  surfaceTintColor: Colour.greyLight,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colour.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(right: 10),
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('assets/images/image_3.png',height: 40,width: 40,fit: BoxFit.fill,),
                                ),
                                const SizedBox(width: 10,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: MediaQuery.of(context).size.width*.6,
                                      child: RichText(
                                        textAlign:TextAlign.start,
                                        text:  TextSpan(
                                            text:"userName ",
                                            style: TextStyle(
                                                overflow: TextOverflow.ellipsis,
                                                fontFamily: "poppins_Bold",
                                                color: Colour.black,
                                                fontSize: 14),
                                            children:  <TextSpan>[
                                              TextSpan(
                                                text:  "Comment is ",
                                                style: TextStyle(
                                                    fontFamily: "poppins_Med",
                                                    color: Colour.pink,
                                                    fontSize: 12),
                                              ),

                                            ]),
                                      ),
                                    ),

                                    Container(
                                      alignment: Alignment.centerLeft,
                                      width: MediaQuery.of(context).size.width*.4,
                                      child:   Row(
                                        children: [
                                          CommonFun.textReg("10day", 12, TextAlign.start, color: Colour.greyText),
                                          const SizedBox(width: 5),
                                          CommonFun.textReg("2Like", 12, TextAlign.start, color: Colour.greyText),
                                          const SizedBox(width: 5),
                                          CommonFun.textReg("Reply", 12, TextAlign.start, color: Colour.greyText),
                                        ],
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),

                            Center(child: Image.asset('assets/images/like.png',color: Colour.pink,height: 15)),

                          ],
                        ),
                      )
                  ),
                );
              },),
          )
        ],
      ),
    ));
  }


}
