
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
            elevation: 0,
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
                CommonFun.textBold1('Comment', 16, TextAlign.start, color: Colour.black),
              ],
            ),
          ),
          automaticallyImplyLeading: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Expanded(
            child: Card(
              shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
              elevation: 1,
              color: Colour.white,
              margin:const EdgeInsets.only(top: 10,right: 10,left: 10,bottom: 10),
              shadowColor: Colour.greyLight,
              surfaceTintColor: Colour.greyLight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10,),
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
                                              text:"Afshin ",
                                              style: TextStyle(
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: "poppins_Med",
                                                  color: Colour.black,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14),
                                              children:  <TextSpan>[
                                                TextSpan(
                                                  text:  "Thank you very much for your invitation",
                                                  style: TextStyle(
                                                      fontFamily: "poppins_Reg",
                                                      color: Colour.black,
                                                      fontSize: 10),
                                                ),

                                              ]),
                                        ),
                                      ),

                                      Container(
                                        alignment: Alignment.centerLeft,
                                        width: MediaQuery.of(context).size.width*.4,
                                        child:   Row(
                                          children: [
                                            CommonFun.textReg("10day", 10, TextAlign.start, color: Colour.greyText),
                                            const SizedBox(width: 8),
                                            CommonFun.textReg("2Like", 10, TextAlign.start, color: Colour.greyText),
                                            const SizedBox(width: 8),
                                            CommonFun.textReg("Reply", 10, TextAlign.start, color: Colour.greyText),
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
                        ),


                        if(index == 1 || index == 3)
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: 2,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(left: 40,top: 5),
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
                                        child: Image.asset('assets/images/image_3.png',height: 18,width: 18,fit: BoxFit.fill,),
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
                                                  text:"Afshin ",
                                                  style: TextStyle(
                                                      overflow: TextOverflow.ellipsis,
                                                      fontFamily: "poppins_Med",
                                                      color: Colour.black,
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 12),
                                                  children:  <TextSpan>[
                                                    TextSpan(
                                                      text:  "@afshin ",
                                                      style: TextStyle(
                                                          fontFamily: "poppins_Reg",
                                                          color: Colour.pink,
                                                          fontSize: 10),
                                                    ),
                                                    TextSpan(
                                                      text:  "thnku",
                                                      style: TextStyle(
                                                          fontFamily: "poppins_Reg",
                                                          color: Colour.black,
                                                          fontSize: 10),
                                                    ),

                                                  ]),
                                            ),
                                          ),

                                          Container(
                                            alignment: Alignment.centerLeft,
                                            width: MediaQuery.of(context).size.width*.4,
                                            child:   Row(
                                              children: [
                                                CommonFun.textReg("10day", 10, TextAlign.start, color: Colour.greyText),
                                                const SizedBox(width: 8),
                                                CommonFun.textReg("2Like", 10, TextAlign.start, color: Colour.greyText),
                                                const SizedBox(width: 8),
                                                CommonFun.textReg("Reply", 10, TextAlign.start, color: Colour.greyText),
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
                            );
                          },),


                      ],
                    );
                  },),
              ),
            ),
          )
        ],
      ),
    ));
  }


}
