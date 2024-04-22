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
            elevation: 0,
            backgroundColor: Colour.bgColor,
            title: InkWell(
                onTap: () => Navigator.pop(context),
                child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
            automaticallyImplyLeading: false,
          ),
      backgroundColor: Colour.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 6,
              child: Image.asset('assets/images/crwd_logo.png',height: 68,width: 247,)),




          Expanded(
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 0),
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
                          child: CommonFun.textBold1("Sign Up With Email", 16, TextAlign.center,
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
                    margin: const EdgeInsets.only(right: 15, left: 15,top: 15,bottom: 15),
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
                              CommonFun.textBold1("Sign Up With Facebook", 16, TextAlign.center,
                                  color: Colour.white),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {  },
                    ),
                  ),
                 /* Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15,top: 15,bottom: 15),
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
                  ),*/
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textReg("Already have an account?", 12, TextAlign.center,
                          color: Colour.greyText),
                      const SizedBox(width: 5),
                      InkWell(
                        onTap: () =>  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const SignInScreen())),
                        child: Column(
                          children: [
                            CommonFun.textReg("Sign In", 12, TextAlign.center,
                                color: Colour.pink),
                            SizedBox(
                              width: 40,
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
                  const SizedBox(height: 8),
                  Column(
                    children: [
                      CommonFun.textReg(
                          "By tapping log in, you agree with our", 12, TextAlign.center,
                          color: Colour.greyText),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              CommonFun.textReg("Terms of Service", 12, TextAlign.center,
                                  color: Colour.pink),
                              SizedBox(
                                width: 100,
                                child: Divider(
                                  height: 0,
                                  color: Colour.pink,
                                  thickness: 1,
                                ),
                              )
                            ],
                          ),
                          CommonFun.textReg(" and ", 12, TextAlign.center, color: Colour.greyText),
                          Column(
                            children: [
                              CommonFun.textReg("Privacy Policy", 12, TextAlign.center,
                                  color: Colour.pink),
                              SizedBox(
                                width: 85,
                                child: Divider(
                                  height: 0,
                                  color: Colour.pink,
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
