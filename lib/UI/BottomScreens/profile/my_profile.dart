
import 'package:crwd/UI/BottomScreens/profile/edit_profile.dart';
import 'package:crwd/UI/BottomScreens/profile/following_screen.dart';
import 'package:crwd/UI/BottomScreens/profile/payment_method.dart';
import 'package:crwd/UI/BottomScreens/profile/refer_screen.dart';
import 'package:crwd/UI/BottomScreens/profile/scan_qr.dart';
import 'package:crwd/UI/BottomScreens/profile/terms_privacy.dart';
import 'package:crwd/UI/MainScreens/host_basic.dart';
import 'package:crwd/UI/MainScreens/host_basic_1.dart';
import 'package:crwd/UI/signup/language_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:qr_flutter/qr_flutter.dart';
import '../../signup/create_profile/interst_screen.dart';
import 'about_info.dart';
import 'change_password.dart';
import 'help/help_support.dart';
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
    model.add(ModelClass('My Favourites', 1, 'assets/images/profile/my_fav.png'));
    model.add(ModelClass('My Interests ', 2, 'assets/images/profile/my_interest.png'));
    model.add(ModelClass('My Events', 3, 'assets/images/profile/my_event.png'));
    model.add(ModelClass('Payment Methods', 4, 'assets/images/profile/payment.png'));
    model.add(ModelClass('Change Password', 5, 'assets/images/profile/password.png'));
    // model.add(ModelClass('Add Ads', 6, 'assets/images/crwd_icon.png'));
    // model.add(ModelClass('Refer User', 7, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Privacy Policy', 8, 'assets/images/profile/privacy.png'));
    model.add(ModelClass('Terms & Conditions', 9, 'assets/images/profile/terms.png'));
    model.add(ModelClass('Help Support', 13, 'assets/images/profile/help.png'));
    model.add(ModelClass('Select Language', 10, 'assets/images/profile/language.png'));
    model.add(ModelClass('Rate Us', 11, 'assets/images/profile/star.png'));
    model.add(ModelClass('About', 12, 'assets/images/profile/about.png'));
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child:   Scaffold(
          backgroundColor: Colour.whiteApp,
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colour.black),
            backgroundColor: Colour.whiteApp,


            title: SizedBox(
              width: MediaQuery.of(context).size.width/1.7,
              child: const Text('Profile',style: TextStyle(color: Colors.black)),
            ),
            elevation: 0,
            automaticallyImplyLeading: false,




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
                  child: CommonFun.textBold1('\$200', 12, TextAlign.center,color: Colors.pink),
                ),
              )
            ],
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 8,left: 10,right: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [


                      Row(
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
                                    'assets/images/icon/edit.png',
                                    height: 22,width: 22,
                                  ),
                                )
                              ],
                            ),
                          ),


                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CommonFun.textBold1('Amie Rosie', 16, TextAlign.start, color: Colors.black),
                                CommonFun.textReg('amierosie@yomail.com', 12, TextAlign.start,
                                    color: Colour.greyText),
                              ],
                            ),
                          ),



                        ],
                      ),

                      InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ScanQr()));
                        },
                        child: Container(
                          width: 42,height: 42,
                            decoration: BoxDecoration(
                              color: Colour.divideLine2,
                              borderRadius: BorderRadiusDirectional.circular(50)
                            ),
                            child: Center(child: QrImageView(
                              data: '1234567890',
                              version: QrVersions.auto,
                              size: 200.0,
                            ),

                            )),
                      )
                    ],
                  ),
                ),


                Container(
                    width: double.infinity,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(15),
                    color: Colour.white
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      margin: const EdgeInsets.only(right: 10,left: 10),
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
                                          fontFamily: "poppins_Bold",
                                          color: Colour.black,
                                          fontSize: 12),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: VerticalDivider(
                              color: Colour.divideLine,
                              thickness: 1,
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
                                          fontFamily: "poppins_Bold",
                                          color: Colour.black,
                                          fontSize: 12),
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                            child: VerticalDivider(
                              color: Colour.divideLine,
                              thickness: 1,
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
                                          fontFamily: "poppins_Bold",
                                          color: Colour.black,
                                          fontSize: 12),
                                    ),
                                  ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )

                ),

                Container(
                  decoration:
                  BoxDecoration( borderRadius: BorderRadius.circular(10)),
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
                                        'assets/images/profile/theme.png',
                                        height: 16,
                                      ),
                                      const SizedBox(width: 10),
                                      CommonFun.textBold1('Dark Theme', 12, TextAlign.start,
                                          color: Colors.black),
                                    ],
                                  ),



                                  FlutterSwitch(
                                    activeColor: Colour.pink,
                                    width: 35.0,
                                    height: 20.0,
                                    toggleSize: 20.0,
                                    value: status,
                                    borderRadius: 30.0,
                                    padding: 1.0,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> HostBasic(from: 1)));
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
                              if(model[index].count == 13){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const HelpSupport()));
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
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>  LanguageScreen(from: 1,)));
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
                              padding: const EdgeInsets.only(top: 5,bottom: 5,right: 3,left: 3),
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
                                              height: 17,
                                            ),
                                            const SizedBox(width: 10),
                                            CommonFun.textBold1(
                                                model[index].name.toString(), 12, TextAlign.start,
                                                color: Colors.black),
                                          ],
                                        ),
                                        Center(
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colour.greyText,size: 15,
                                          ),
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
              Container(
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
                        CommonFun.textBold1("Logout", 16, TextAlign.center, color: Colour.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
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
                      CommonFun.textBold1('Rate App', 14, TextAlign.center, color: Colour.white),
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
                    CommonFun.textBold1('Your Rating: ', 14, TextAlign.center, color: Colour.greyText),

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
                decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor:Colors.white,
                  contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  hintText: "Leave Feedback (Optional)",
                  labelStyle: TextStyle(
                      color: Colour.greyText,
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
                          child: CommonFun.textBold1("Submit", 14, TextAlign.center, color: Colour.white),
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
                  decoration: BoxDecoration(
                    color: Colour.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  child: InkWell(
                    child: SizedBox(
                      child: Center(
                        child: CommonFun.textBold1("Cancel", 14, TextAlign.center, color: Colour.greyText),
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
