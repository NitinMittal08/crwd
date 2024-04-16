
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';
import 'book_ticket.dart';
import 'organizer_profile.dart';
import 'organizer_reviews.dart';

class ExploreDetail extends StatefulWidget {
  const ExploreDetail({Key? key}) : super(key: key);

  @override
  State<ExploreDetail> createState() => _ExploreDetailState();
}

class _ExploreDetailState extends State<ExploreDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            backgroundColor: Colour.bgColor,
            iconTheme: IconThemeData(color: Colour.black),
            title:  CommonFun.textBold('Explore detail', 16, TextAlign.center, color: Colour.black),
            actions: [
              Container(
                margin:   const EdgeInsets.only(right: 15),
                width: 50,
                height: 20,
                alignment: Alignment.center,
                child: const Icon(Icons.share_outlined),
              )
            ],
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset('assets/images/image_3.png',width: double.infinity,height: 250,fit: BoxFit.fill,),
                      ),

                      Container(
                        margin:const EdgeInsets.only(right: 25,left: 25 ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                  color: Colour.pink,
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              child: Center(child: Image.asset('assets/images/like.png',height: 18)),
                            ),

                            Container(
                              height: 60,
                              width: 50,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colour.pink,
                                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15))
                              ),
                              child: CommonFun.textBold('120', 14, TextAlign.center, color: Colour.white),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrganizerProfile())),
                            child: SizedBox(
                              height: 35,
                              width: 35,
                              child: Center(child: Image.asset('assets/images/image_3.png',fit: BoxFit.fill,height: 18)),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                textAlign:TextAlign.start,
                                text:  TextSpan(
                                    text:"Organized by",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: "poppins_Med",
                                        color: Colour.greyText,
                                        fontSize: 12),
                                    children:  <TextSpan>[
                                      TextSpan(
                                        text:  "Amie Rosie",
                                        style: TextStyle(
                                            fontFamily: "poppins_Med",
                                            color: Colour.black,
                                            fontSize: 12),
                                      ),

                                    ]),
                              ),

                              InkWell(
                                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const OrganizerReviews())),
                             child: CommonFun.textReg('4.2 (520reviews)', 12, TextAlign.start, color: Colour.greyText),
                              )
                            ],
                          )
                        ],
                      ),

                      Container(
                        alignment: Alignment.center,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colour.pink,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Center(
                                child: CommonFun.textMed("Follow", 12, TextAlign.center,
                                    color: Colour.white),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                  const SizedBox(height: 12),
                  CommonFun.textBold("Ayurvedic Consultation in Mansa, Punjab By Dr. Vikram Chauhan", 16, TextAlign.start,  color: Colour.black),
                  const SizedBox(height: 10),
                  CommonFun.textReg("Lorem ips dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua dolor sit amet adipisci elit......", 12, TextAlign.start,  color: Colour.greyText),


                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                   itemCount: 2,
                    itemBuilder: (context, index) {
                    return  Card(
                      elevation: 1,
                      color: Colour.white,
                      shadowColor: Colour.bgColor,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Container(
                              height: 35,
                              width: 35,
                              child: Center(child: Image.asset('assets/images/image_3.png',fit: BoxFit.fill,height: 18)),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  textAlign:TextAlign.start,
                                  text:  TextSpan(
                                      text:"Thursday , ",
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontFamily: "poppins_Med",
                                          color: Colour.greyText,
                                          fontSize: 12),
                                      children:  <TextSpan>[
                                        TextSpan(
                                          text:  "Apr 13 2021",
                                          style: TextStyle(
                                              fontFamily: "poppins_Med",
                                              color: Colour.greyText,
                                              fontSize: 12),
                                        ),

                                      ]),
                                ),
                                RichText(
                                  textAlign:TextAlign.start,
                                  text:  TextSpan(
                                      text:"8:00pm-",
                                      style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontFamily: "poppins_Med",
                                          color: Colour.greyText,
                                          fontSize: 12),
                                      children:  <TextSpan>[
                                        TextSpan(
                                          text:  "2:30am",
                                          style: TextStyle(
                                              fontFamily: "poppins_Med",
                                              color: Colour.greyText,
                                              fontSize: 12),
                                        ),

                                      ]),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },),


                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    width: double.infinity,
                    child: CommonFun.textReg("Communicate with team", 14, TextAlign.center,
                        color: Colour.greyText),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15,top: 30,bottom: 30),
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colour.pink,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: InkWell(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: CommonFun.textBold("Buy Ticket", 16, TextAlign.center,
                              color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const  BookTicket()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

        ));
  }
}
