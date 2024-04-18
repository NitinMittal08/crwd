



import 'package:flutter/material.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class MyFav extends StatefulWidget {
  const MyFav({super.key});

  @override
  State<MyFav> createState() => _MyFavState();
}

class _MyFavState extends State<MyFav> {



  String qw ='It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using  making it look like readable English.';
  int currentTab = 1;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
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
                  CommonFun.textBold('My Favourite', 16, TextAlign.center, color: Colour.black),
                ],
              ),
            ),
            elevation: 0,
            automaticallyImplyLeading: false,


          ),
          body:    Column(
            children: [

              Container(
                decoration: BoxDecoration(
                    color: Colour.whiteApp,
                    borderRadius: BorderRadiusDirectional.circular(10)
                ),
                alignment: Alignment.center,
                height: 50,
                margin: const EdgeInsets.all(15),
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
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: currentTab ==3 ? 1: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return   (currentTab ==1)
                        ? Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Stack(
                                    alignment: Alignment.topRight,
                                    children: [

                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                      ),

                                      Container(
                                        margin: const EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          color: Colour.white,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(3.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(1.0),
                                          child:  CommonFun.textReg('20 Apr,2022', 8, TextAlign.center, color: Colour.pink),
                                        ),
                                      ),




                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: const EdgeInsets.only(top: 8, left: 10),
                                        height: 20,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          color: Colour.pink,
                                          borderRadius: const BorderRadius.all(
                                            Radius.circular(6.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
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
                                          width: 180,
                                          margin: const EdgeInsets.only(top: 4, left: 10),
                                          child: CommonFun.textBold(
                                              'Amie Rosie', 16, TextAlign.start, color: Colour.black)),


                                      Container(
                                        margin: const EdgeInsets.only(top: 2, left: 10),
                                        child: RichText(
                                          textAlign:TextAlign.start,
                                          text:  TextSpan(
                                              text:"Organized by ",
                                              style: TextStyle(
                                                  overflow: TextOverflow.ellipsis,
                                                  fontFamily: "poppins_Reg",
                                                  color: Colour.greyText2,
                                                  fontSize: 12),
                                              children:  <TextSpan>[
                                                TextSpan(
                                                  text:  "Amie Rosie",
                                                  style: TextStyle(
                                                      fontFamily: "poppins_Reg",
                                                      color: Colour.black,
                                                      fontSize: 12),
                                                ),

                                              ]),
                                        ),
                                      ),

                                      Container(
                                          width: 180,
                                          margin: const EdgeInsets.only(left: 10),
                                          child: Row(
                                            children: [
                                              Image.asset('assets/images/icon/location.png',width: 9,height: 13,),
                                              const SizedBox(width: 3,),
                                              CommonFun.textReg('2241 Townhall, Columbia', 12, TextAlign.start, color: Colour.greyText2),
                                            ],
                                          )),


                                    ],
                                  ),
                                ],
                              ),


                              SizedBox(
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                  ],
                                ),
                              ),

                            ]),
                      ),
                    )
                        :(currentTab ==2)
                        ? Card(
                      elevation: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset('assets/images/image_3.png',height: 90,width: 90,fit: BoxFit.fill,),
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [


                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only(top: 8, left: 10),
                                          child: CommonFun.textBold(
                                              'Amie Rosie', 16, TextAlign.start, color: Colour.black)),
                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only( left: 10),
                                          child: CommonFun.textReg(
                                              'Organized by Amie Rosie', 12, TextAlign.start, color: Colour.black)),
                                      Container(
                                          width: 180,
                                          margin: EdgeInsets.only(left: 10),
                                          child: CommonFun.textReg(
                                              '2241 Townhall, Columbia Boulevard ', 12, TextAlign.start, color: Colour.black)),


                                    ],
                                  ),
                                ],
                              ),


                              SizedBox(
                                height: 80,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Image.asset('assets/images/like.png',color: Colour.pink,height: 15,),

                                    Container(
                                        child: CommonFun.textBold(
                                            '200', 12, TextAlign.center, color: Colour.pink)),
                                  ],
                                ),
                              ),

                            ]),
                      ),
                    )
                        :(currentTab ==3)
                        ?Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Card(
                                elevation: 1,
                                child: Container(
                                  width: 100,
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    textAlign:TextAlign.center,
                                    text:  TextSpan(
                                        text:"15k \n",
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontFamily: "poppins_Bold",
                                            color: Colour.pink,
                                            fontSize: 20),
                                        children:  <TextSpan>[
                                          TextSpan(
                                            text:  "Ticket Sold",
                                            style: TextStyle(
                                                fontFamily: "poppins_Med",
                                                color: Colour.black,
                                                fontSize: 14),
                                          ),

                                        ]),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 1,
                                child: Container(
                                  width: 110,
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    textAlign:TextAlign.center,
                                    text:  TextSpan(
                                        text:"150k \n",
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontFamily: "poppins_Bold",
                                            color: Colour.pink,
                                            fontSize: 20),
                                        children:  <TextSpan>[
                                          TextSpan(
                                            text:  "Followers",
                                            style: TextStyle(
                                                fontFamily: "poppins_Med",
                                                color: Colour.black,
                                                fontSize: 14),
                                          ),

                                        ]),
                                  ),
                                ),
                              ),
                              Card(
                                elevation: 1,
                                child: Container(
                                  width: 100,
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    textAlign:TextAlign.center,
                                    text:  TextSpan(
                                        text:"15k \n",
                                        style: TextStyle(
                                            overflow: TextOverflow.ellipsis,
                                            fontFamily: "poppins_Bold",
                                            color: Colour.pink,
                                            fontSize: 20),
                                        children:  <TextSpan>[
                                          TextSpan(
                                            text:  "Event",
                                            style: TextStyle(
                                                fontFamily: "poppins_Med",
                                                color: Colour.black,
                                                fontSize: 14),
                                          ),

                                        ]),
                                  ),
                                ),
                              ),
                            ],
                          ),


                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CommonFun.textMed(qw, 14, TextAlign.start, color: Colour.greyText),
                          )
                        ]
                    )
                        : const SizedBox();

                  },
                ),
              ),
            ],
          ),

        )
    );
  }



}
