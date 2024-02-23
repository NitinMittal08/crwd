
import 'package:crwd/UI/BottomScreens/ticket_screen/ticket_info.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        title:CommonFun.textBold('Ticket', 16, TextAlign.start, color: Colour.black),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [

          // tab_bar
          Container(
            margin:const  EdgeInsets.only(right: 15,left: 15),
            height: 60,
            decoration: BoxDecoration(
                border: Border.all(color: Colour.greyLine,width: 1),
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
                      child: CommonFun.textBold('Upcoming', 16, TextAlign.center, color: currentTab == 0?Colour.white: Colour.black),
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
                      child: CommonFun.textBold('Past Tickets', 16, TextAlign.center,  color: currentTab == 1?Colour.white: Colour.black),
                    ),
                  ),
                ),

              ],
            ),

          ),

          if(currentTab == 0)
          Expanded(
              child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: 20,
            itemBuilder: (context, index) {
            return Card(
               elevation: 0,
              color: Colour.white,
              margin:const EdgeInsets.only(top: 10,right: 10,left: 10),
              shadowColor: Colour.greyLight,
              surfaceTintColor: Colour.greyLight,
              child: Container(
                decoration: BoxDecoration(
                    color: Colour.white,
                    borderRadius: BorderRadius.circular(10)
                ),
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
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset('assets/images/image_3.png',height: 65,width: 65,fit: BoxFit.fill,),
                              ),
                              Container(
                                margin:const EdgeInsets.only(left: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CommonFun.textBold("Sunday Sqool Comedy", 16, TextAlign.start, color: Colour.black),
                                    CommonFun.textReg("Sunday Sqool Comedy", 12, TextAlign.start, color: Colour.greyText),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [

                                        Icon(Icons.edit_location,color: Colour.greyText,size: 15,),
                                        Container(
                                          constraints: BoxConstraints(
                                            maxWidth: MediaQuery.of(context).size.width * .41,
                                          ),
                                          alignment: Alignment.centerLeft,
                                          child: CommonFun.textReg("Sour Mouse  New York, NY", 12, TextAlign.start, color: Colour.greyText),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),

                          CommonFun.textBold('600', 14, TextAlign.center, color: Colour.pink)


                        ],
                      ),
                    ),
                    Image.asset('assets/images/line.png'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          RichText(
                            textAlign:TextAlign.start,
                            text:  TextSpan(
                                text:"Ticket Type \n",
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: "poppins_Med",
                                    color: Colour.black,
                                    fontSize: 12),
                                children:  <TextSpan>[
                                  TextSpan(
                                    text:  "VIP, Normal",
                                    style: TextStyle(
                                        fontFamily: "poppins_Med",
                                        color: Colour.pink,
                                        fontSize: 12),
                                  ),

                                ]),
                          ),
                          RichText(
                            textAlign:TextAlign.start,
                            text:  TextSpan(
                                text:"No. of Ticket \n",
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: "poppins_Med",
                                    color: Colour.black,
                                    fontSize: 12),
                                children:  <TextSpan>[
                                  TextSpan(
                                    text:  "2 , 3",
                                    style: TextStyle(
                                        fontFamily: "poppins_Med",
                                        color: Colour.pink,
                                        fontSize: 12),
                                  ),

                                ]),
                          ),
                          RichText(
                            textAlign:TextAlign.start,
                            text:  TextSpan(
                                text:"Date \n",
                                style: TextStyle(
                                    overflow: TextOverflow.ellipsis,
                                    fontFamily: "poppins_Med",
                                    color: Colour.black,
                                    fontSize: 12),
                                children:  <TextSpan>[
                                  TextSpan(
                                    text:  "18 May 2020",
                                    style: TextStyle(
                                        fontFamily: "poppins_Med",
                                        color: Colour.pink,
                                        fontSize: 12),
                                  ),

                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            );
          },)),


          if(currentTab == 1)
            Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const TicketInfo()));
                      },
                      child: Card(
                        elevation: 0,
                        color: Colour.white,
                        margin:const EdgeInsets.only(top: 10,right: 10,left: 10),
                        shadowColor: Colour.greyLight,
                        surfaceTintColor: Colour.greyLight,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colour.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
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
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.asset('assets/images/image_3.png',height: 65,width: 65,fit: BoxFit.fill,),
                                        ),
                                        Container(
                                          margin:const EdgeInsets.only(left: 5),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              CommonFun.textBold("Sunday Sqool Comedy", 16, TextAlign.start, color: Colour.black),
                                              CommonFun.textReg("Sunday Sqool Comedy", 12, TextAlign.start, color: Colour.greyText),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [

                                                  Icon(Icons.edit_location,color: Colour.greyText,size: 15,),
                                                  Container(
                                                    constraints: BoxConstraints(
                                                      maxWidth: MediaQuery.of(context).size.width * .41,
                                                    ),
                                                    alignment: Alignment.centerLeft,
                                                    child: CommonFun.textReg("Sour Mouse  New York, NY", 12, TextAlign.start, color: Colour.greyText),
                                                  )
                                                ],
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),

                                    CommonFun.textBold('600', 14, TextAlign.center, color: Colour.pink)


                                  ],
                                ),
                              ),
                              Image.asset('assets/images/line.png'),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    RichText(
                                      textAlign:TextAlign.start,
                                      text:  TextSpan(
                                          text:"Ticket Type \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Med",
                                              color: Colour.black,
                                              fontSize: 12),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "VIP, Normal",
                                              style: TextStyle(
                                                  fontFamily: "poppins_Med",
                                                  color: Colour.pink,
                                                  fontSize: 12),
                                            ),

                                          ]),
                                    ),
                                    RichText(
                                      textAlign:TextAlign.start,
                                      text:  TextSpan(
                                          text:"No. of Ticket \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Med",
                                              color: Colour.black,
                                              fontSize: 12),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "2 , 3",
                                              style: TextStyle(
                                                  fontFamily: "poppins_Med",
                                                  color: Colour.pink,
                                                  fontSize: 12),
                                            ),

                                          ]),
                                    ),
                                    RichText(
                                      textAlign:TextAlign.start,
                                      text:  TextSpan(
                                          text:"Date \n",
                                          style: TextStyle(
                                              overflow: TextOverflow.ellipsis,
                                              fontFamily: "poppins_Med",
                                              color: Colour.black,
                                              fontSize: 12),
                                          children:  <TextSpan>[
                                            TextSpan(
                                              text:  "18 May 2020",
                                              style: TextStyle(
                                                  fontFamily: "poppins_Med",
                                                  color: Colour.pink,
                                                  fontSize: 12),
                                            ),

                                          ]),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ),
                    );
                  },))
        ],
      ),

    ));
  }
}
