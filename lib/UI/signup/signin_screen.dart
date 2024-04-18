
import 'package:crwd/UI/signup/language_screen.dart';
import 'package:crwd/UI/signup/signup_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';
import '../MainScreens/main_page.dart';
import 'forgot_password.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colour.bgColor,
            title: InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),

            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> LanguageScreen(from: 0)));
                },
                child:   Row(
                  children: [
                    Icon(Icons.language,color: Colour.black,),
                    CommonFun.textBold("EN", 14, TextAlign.center, color: Colour.black),
                    const SizedBox(width: 10),
                  ],
                ),
              ),
            ],



          ),
          backgroundColor: Colour.bgColor,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  flex: 5,
                  child: Image.asset('assets/images/crwd_logo.png',height: 68,width: 247,)),




              Expanded(
                  flex:6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 20),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15),
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
                              child: CommonFun.textBold("Sign In With Email", 16, TextAlign.center,
                                  color: Colour.white),
                            ),
                          ),
                          onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MainPage(index: 0,))),
                        ),
                      ),



                      Container(
                        margin: const EdgeInsets.only(right: 20,left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Flexible(
                              child: Divider(
                                height: 0,
                                color: Colour.greyLine,
                                thickness: 1,
                              ),
                            ),
                            CommonFun.textReg(" or  ", 16, TextAlign.center, color: Colour.greyText),
                            Flexible(
                              child: Divider(
                                height: 0,
                                color: Colour.greyLine,
                                thickness: 1,
                              ),
                            ),
                          ],
                        ),
                      ),




                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15,top: 5,bottom: 15),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colour.fbColor,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      child: Image.asset('assets/images/icon/facebook.png',width: 8,height: 17,fit: BoxFit.fitHeight)),
                                  CommonFun.textBold("Sign In With Facebook", 16, TextAlign.center,
                                      color: Colour.white),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {  },
                        ),
                      ),
                /*      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15,top: 10,bottom: 10),
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colour.black,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10.0),
                          ),
                        ),
                        child: InkWell(
                          child: SizedBox(
                            width: double.infinity,
                            height: double.infinity,
                            child: Center(
                              child: CommonFun.textBold("Sign In With Apple ID", 16, TextAlign.center,
                                  color: Colour.white),
                            ),
                          ),
                          onTap: () {  },
                        ),
                      ),*/

                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));

                          },
                          child: CommonFun.textReg("Forgot Password?", 12, TextAlign.center, color: Colour.greyText)),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CommonFun.textReg("Are you new in crwd?", 12, TextAlign.center, color: Colour.greyText),
                          InkWell(
                            onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignUpScreen())),
                            child: Column(
                              children: [
                                CommonFun.textReg("  Sign Up", 12, TextAlign.center,
                                    color: Colour.pink),
                                SizedBox(
                                  width: 45,
                                  child: Divider(
                                    height: 0,
                                    color: Colour.pink,
                                    thickness: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                    ],
                  )),



            ],
          ),
        ));
  }
}
