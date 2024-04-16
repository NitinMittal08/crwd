
import 'package:crwd/UI/signup/language_screen.dart';
import 'package:crwd/UI/signup/signup_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';
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
            backgroundColor: Colour.bgColor,
            leading: BackButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Colors.black
            ),

            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const LanguageScreen()));
                },
                child:   Row(
                  children: [
                    Icon(Icons.language,color: Colour.black,),
                    CommonFun.textBold("EN", 16, TextAlign.center, color: Colour.black),
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
                  flex: 5,
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
                              child: CommonFun.textBold("Sign Up With Email", 16, TextAlign.center,
                                  color: Colour.white),
                            ),
                          ),
                          onTap: () {

                          },
                        ),
                      ),



                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 165,
                            child: Divider(
                              height: 0,
                              color: Colour.greyLine,
                              thickness: 1,
                            ),
                          ),
                          CommonFun.textReg(" or  ", 16, TextAlign.center, color: Colour.greyText),
                          SizedBox(
                            width: 165,
                            child: Divider(
                              height: 0,
                              color: Colour.greyLine,
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),




                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15),
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
                              child: CommonFun.textBold("Sign Up With Facebook", 16, TextAlign.center,
                                  color: Colour.white),
                            ),
                          ),
                          onTap: () {  },
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(right: 15, left: 15),
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
                              child: CommonFun.textBold("Sign Up With Apple ID", 16, TextAlign.center,
                                  color: Colour.white),
                            ),
                          ),
                          onTap: () {  },
                        ),
                      ),

                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgotPassword()));

                          },
                          child: CommonFun.textReg("Forgot Password?", 16, TextAlign.center, color: Colour.greyText)),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CommonFun.textReg("Are you new in crwd?", 16, TextAlign.center, color: Colour.greyText),
                          InkWell(
                            onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignUpScreen())),
                            child: Column(
                              children: [
                                CommonFun.textReg("  Sign Up", 16, TextAlign.center,
                                    color: Colour.greyText),
                                SizedBox(
                                  width: 58,
                                  child: Divider(
                                    height: 0,
                                    color: Colour.greyText,
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
