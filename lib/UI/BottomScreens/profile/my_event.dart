

import 'package:crwd/UI/BottomScreens/profile/event_detail.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class MyEvent extends StatefulWidget {
  const MyEvent({super.key});

  @override
  State<MyEvent> createState() => _MyEventState();
}

class _MyEventState extends State<MyEvent> {


  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colour.blackShade),
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
              CommonFun.textBold('My Event', 16, TextAlign.start, color: Colour.black),

            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,


      ),
      body: Column(
        children: [

          const SizedBox(height: 10),
          Row(
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      color: Colour.whiteApp,
                      borderRadius: BorderRadiusDirectional.circular(10)
                  ),
                  alignment: Alignment.center,
                  height: 50,
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
              ),
              Container(
                margin: const EdgeInsets.only(right: 15),
                child: Image.asset('assets/images/filter.png',width: 40,height: 40,fit: BoxFit.fill,),
              )
            ],
          ),

          const SizedBox(height: 15),
          // tab_bar
          Container(
            margin:const  EdgeInsets.only(right: 15,left: 15),
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colour.divideLine,width: 1),
                color: Colour.bgColor,
                borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                  onTap: () {
                    currentTab =0;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*.44,
                      height: 60,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: currentTab == 0?Colour.pink: Colour.bgColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: CommonFun.textBold('Upcoming', 16, TextAlign.center, color: currentTab == 0?Colour.white: Colour.greyText),
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {
                    currentTab =1;
                    setState(() {});
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width*.44,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: currentTab == 1?Colour.pink: Colour.bgColor,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: CommonFun.textBold('Past Event', 16, TextAlign.center,  color: currentTab == 1?Colour.white: Colour.greyText ),
                    ),
                  ),
                ),

              ],
            ),

          ),


          const SizedBox(height: 10),

          if(currentTab == 0)
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const EventDetail())),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Stack(
                          alignment: FractionalOffset.topRight,
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                              child: Image.asset('assets/images/image_3.png',width: double.infinity,height: 200,fit: BoxFit.fill,),
                            ),

                            Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colour.whiteApp,
                                  borderRadius: BorderRadius.circular(2)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: CommonFun.textReg('20 Apr, 2020', 12, TextAlign.center, color: Colour.pink),
                              ),
                            ),
                          ],
                        ),

                        Container(
                          decoration: BoxDecoration(
                              color: Colour.white,
                              borderRadius: const BorderRadiusDirectional.only(bottomStart: Radius.circular(15),bottomEnd: Radius.circular(15))
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 10,left: 10,top: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    CommonFun.textBold('Sunday Sqool Comedy', 16, TextAlign.center, color: Colour.black),
                                    CommonFun.textBold('\$120', 12, TextAlign.center, color: Colour.pink),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 10,left: 10,bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/images/icon/location.png',width: 9,height: 13,),
                                    const SizedBox(width: 3,),
                                    CommonFun.textReg('Sour Mouse  New York, NY', 12, TextAlign.center, color: Colour.greyText2),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )


                      ],
                    ),
                  ),
                );
              },),
            ),


          if(currentTab == 1)
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const EventDetail())),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: FractionalOffset.topRight,
                            children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(topRight: Radius.circular(15),topLeft: Radius.circular(15)),
                                child: Image.asset('assets/images/image_3.png',width: double.infinity,height: 200,fit: BoxFit.fill,),
                              ),

                              Container(
                                margin: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colour.whiteApp,
                                    borderRadius: BorderRadius.circular(2)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: CommonFun.textReg('20 Apr, 2020', 12, TextAlign.center, color: Colour.pink),
                                ),
                              ),
                            ],
                          ),

                          Container(
                            decoration: BoxDecoration(
                                color: Colour.white,
                                borderRadius: const BorderRadiusDirectional.only(bottomStart: Radius.circular(15),bottomEnd: Radius.circular(15))
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10,left: 10,top: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      CommonFun.textBold('Sunday Sqool Comedy', 16, TextAlign.center, color: Colour.black),
                                      CommonFun.textBold('\$120', 12, TextAlign.center, color: Colour.pink),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: const EdgeInsets.only(right: 10,left: 10,bottom: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/icon/location.png',width: 9,height: 13,),
                                      const SizedBox(width: 3,),
                                      CommonFun.textReg('Sour Mouse  New York, NY', 12, TextAlign.center, color: Colour.greyText2),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )


                        ],
                      ),
                    ),
                  );
                },),
            ),

        ],
      ),

    ));
  }

}
