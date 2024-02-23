import 'package:crwd/UI/signup/signin_screen.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';
import 'create_profile/create_profile.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const CreateProfile()));
                      },
                    ),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textReg("Already have an account?", 16, TextAlign.center,
                          color: Colour.greyText),
                      InkWell(
                        onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignInScreen())),
                        child: Column(
                          children: [
                            CommonFun.textReg(" Sign In", 16, TextAlign.center,
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
                  Column(
                    children: [
                      CommonFun.textReg(
                          "By tapping log in, you agree with our", 16, TextAlign.center,
                          color: Colour.greyText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CommonFun.textReg("Terms of Service", 16, TextAlign.center,
                                  color: Colour.greyText),
                              SizedBox(
                                width: 130,
                                child: Divider(
                                  height: 0,
                                  color: Colour.greyText,
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                          CommonFun.textReg(" and ", 16, TextAlign.center, color: Colour.greyText),
                          Column(
                            children: [
                              CommonFun.textReg("Privacy Policy", 16, TextAlign.center,
                                  color: Colour.greyText),
                              SizedBox(
                                width: 120,
                                child: Divider(
                                  height: 0,
                                  color: Colour.greyText,
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                        ],
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
