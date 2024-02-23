

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
          backgroundColor: Colour.bgColor,
          title: CommonFun.textBold('Like', 16, TextAlign.start, color: Colour.black),
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
                    child: Padding(
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
                                  CommonFun.textBold('Name', 14, TextAlign.start, color: Colour.black),
                                  CommonFun.textReg('2 mutual friend', 14, TextAlign.start, color: Colour.greyText),
                                ],
                              )
                            ],
                          ),

                          Container(
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colour.pink,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                            ),
                            child: InkWell(
                              child: SizedBox(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CommonFun.textMed("Follow", 12, TextAlign.center,
                                        color: Colour.white),
                                  ),
                                ),
                              ),
                            ),
                          ),

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
