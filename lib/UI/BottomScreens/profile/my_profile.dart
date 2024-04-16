
import 'package:crwd/UI/BottomScreens/profile/edit_profile.dart';
import 'package:crwd/UI/BottomScreens/profile/following_screen.dart';
import 'package:crwd/UI/BottomScreens/profile/payment_method.dart';
import 'package:crwd/UI/BottomScreens/profile/refer_screen.dart';
import 'package:crwd/UI/BottomScreens/profile/terms_privacy.dart';
import 'package:crwd/UI/signup/language_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import '../../signup/create_profile/interst_screen.dart';
import 'about_info.dart';
import 'change_password.dart';
import 'my_event.dart';
import 'my_fav.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool status = false;
  List<ModelClass> model = [];


  @override
  void initState() {
    super.initState();
    model.add(ModelClass('My Favourites', 1, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('My Interests ', 2, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('My Events', 3, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Payment Methods', 4, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Change Password', 5, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Add Ads', 6, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Refer User', 7, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Privacy Policy', 8, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Terms & Conditions', 9, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Select Language', 10, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Rate Us', 11, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('About', 12, 'assets/images/crwd_icon.png'));
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:   Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colour.black),
            backgroundColor: Colour.bgColor,
            title: const Text('Profile',style: TextStyle(color: Colors.black)),
            actions: [
              Center(
                child: Container(
                  margin:   const EdgeInsets.only(right: 15),
                  width: 50,
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colour.grey,
                      borderRadius: BorderRadius.circular(15)),
                  child: CommonFun.textBold('\$200', 12, TextAlign.center,color: Colors.pink),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> const EditProfile())),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              height: 60,
                              width: 60,
                              margin: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border.all(color: Colour.pink, width: 3)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset(
                                    'assets/images/image_3.png',
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 3, bottom: 3),
                              child: Image.asset(
                                'assets/images/edit.png',
                                height: 20,
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * .7,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyEvent()));
                              },
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "120 \n",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: "poppins_Bold",
                                        color: Colour.pink,
                                        fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Event",
                                        style: TextStyle(
                                            fontFamily: "poppins_Med",
                                            color: Colour.greyText,
                                            fontSize: 12),
                                      ),
                                    ]),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FollowingScreen(tab:0)));
                              },
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "120 \n",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: "poppins_Bold",
                                        color: Colour.pink,
                                        fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Follower",
                                        style: TextStyle(
                                            fontFamily: "poppins_Med",
                                            color: Colour.greyText,
                                            fontSize: 12),
                                      ),
                                    ]),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> FollowingScreen(tab: 1,)));
                              },
                              child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: "120k \n",
                                    style: TextStyle(
                                        overflow: TextOverflow.ellipsis,
                                        fontFamily: "poppins_Bold",
                                        color: Colour.pink,
                                        fontSize: 18),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: "Following",
                                        style: TextStyle(
                                            fontFamily: "poppins_Med",
                                            color: Colour.greyText,
                                            fontSize: 12),
                                      ),
                                    ]),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CommonFun.textBold('Amie Rosie', 12, TextAlign.start, color: Colors.black),
                            CommonFun.textReg('amierosie@yomail.com', 12, TextAlign.start,
                                color: Colour.greyText),
                          ],
                        ),
                      ),
                      Image.asset(
                        model[1].image.toString(),
                        height: 35,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        model[1].image.toString(),
                                        height: 25,
                                      ),
                                      const SizedBox(width: 10),
                                      CommonFun.textBold('Dark Theme', 12, TextAlign.start,
                                          color: Colors.black),
                                    ],
                                  ),


                                  FlutterSwitch(
                                    activeColor: Colour.pink,
                                    width: 40.0,
                                    height: 20.0,
                                    toggleSize: 20.0,
                                    value: status,
                                    borderRadius: 30.0,
                                    padding: 3.0,
                                    showOnOff: false,
                                    onToggle: (val) {
                                      setState(() {
                                        status = val;




                                      });
                                    },
                                  ),

                                ],
                              ),
                            ),
                            const Divider(
                              height: 1,
                              thickness: 1,
                            )
                          ],
                        ),
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: model.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () async{
                              if (model[index].count == 1) {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyFav()));
                              }
                              if (model[index].count == 2) {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> InterestScreen(from: 1,)));
                              }
                              if(model[index].count == 3){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const MyEvent()));
                              }
                              if(model[index].count == 4){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentMethod()));
                              }
                              if(model[index].count == 5){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ChangePassword()));
                              }
                              if(model[index].count == 6){
                                debugPrint('count ${model[index].count}--itemName ${model[index].name}');
                              }
                              if(model[index].count == 7){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const ReferScreen()));
                              }
                              if(model[index].count==8){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsPrivacy(from: 0)));
                              }
                              if(model[index].count==9){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>TermsPrivacy(from: 1)));
                              }
                              if(model[index].count==10){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageScreen()));
                              }
                              if(model[index].count==11){
                                  await showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (_) {
                                    return rateUsDialog();
                                  },
                                  );
                              }
                              if(model[index].count==12){
                                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutInfo()));
                              }

                              setState(() { });
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              model[index].image.toString(),
                                              height: 25,
                                            ),
                                            const SizedBox(width: 10),
                                            CommonFun.textBold(
                                                model[index].name.toString(), 12, TextAlign.start,
                                                color: Colors.black),
                                          ],
                                        ),
                                        Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: Colour.greyText,
                                        ),
                                      ],
                                    ),
                                  ),
                                  if (model[index].count != 12)
                                    const Divider(
                                      height: 1,
                                      thickness: 1,
                                    )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
               /* Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15, top: 50, bottom: 50),
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
                        child:
                        CommonFun.textBold("Continue", 16, TextAlign.center, color: Colour.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),*/
              ],
            ),
          ),
        )

          );
  }

  Widget rateUsDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colour.whiteApp,
      child: StatefulBuilder(builder: (BuildContext context, StateSetter myState) {
        return  Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [

            Container(
              alignment: AlignmentDirectional.centerEnd,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: const BorderRadiusDirectional.only(topStart: Radius.circular(10),topEnd: Radius.circular(10)),
                color: Colour.pink,
              ),
              child: Container(
                  margin: const EdgeInsets.only(right: 15,left: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CommonFun.textBold('Rate App', 14, TextAlign.center, color: Colour.white),
                      InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Image.asset('assets/images/cancel.png',height: 15,width: 15,)),
                    ],
                  )),

            ),


            Container(
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CommonFun.textBold('Your Rating: ', 14, TextAlign.center, color: Colour.black.withOpacity(.3)),

                    Container(
                      margin: const EdgeInsets.only(left: 5, right: 5),
                      child: RatingBar.builder(
                        initialRating: 1,
                        minRating: 1,
                        glow: false,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: const EdgeInsets.symmetric(horizontal: 0.5),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star_border_purple500_rounded,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {
                          debugPrint(rating.toString());
                        },
                      ),
                    )





                  ],
                ),
              )
            ),



            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              margin: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 10),
              child: TextField(
                maxLines: 5,
                style: TextStyle(
                  fontSize: 14.0,
                  height: 1.2,
                  wordSpacing: 2,
                  fontFamily: "poppins_Reg",
                  color: Colour.black,
                ),
                keyboardType: TextInputType.visiblePassword, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  fillColor:Colors.white,
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: "Bio",
                  labelStyle: TextStyle(
                      color: Colors.pink,
                    fontSize: 14

                  ),),
              ),
            ),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colour.pink,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      child: SizedBox(
                        child: Center(
                          child: CommonFun.textBold("Submit", 14, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                Container(
                  width: 100,
                  height: 40,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: InkWell(
                    child: SizedBox(
                      child: Center(
                        child: CommonFun.textBold("Cancel", 14, TextAlign.center, color: Colour.pink),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),

              ],
            ),


            const SizedBox(height: 20),
          ],
        );
      }),
    );
  }




}


class ModelClass {
  String? name;
  int? count;
  String? image;

  ModelClass(this.name, this.count, this.image);
}
