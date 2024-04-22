import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';

import '../signin_screen.dart';
import '../signup_screen.dart';

class LastScreen extends StatefulWidget {
  const LastScreen({Key? key}) : super(key: key);

  @override
  State<LastScreen> createState() => _LastScreenState();
}

class _LastScreenState extends State<LastScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
      body: Column(
        children: [
          Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: SingleChildScrollView(
                  child: RichText(
                    textAlign:TextAlign.start,
                    text:  TextSpan(
                        text:"Welcome to ",
                        style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontFamily: "poppins_Med",
                            color: Colour.black,
                            fontSize: 64),
                        children:  <TextSpan>[
                          TextSpan(
                            text:  "crwd \n",
                            style: TextStyle(
                                fontFamily: "poppins_Med",
                                color: Colour.pink,
                                fontSize: 64),
                          ),
                          TextSpan(
                            text:  "Let’s Love The Smarter Way",
                            style: TextStyle(
                                fontFamily: "poppins_Med",
                                color: Colour.black,
                                fontSize: 64),
                          ),
                        ]),
                  ),
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15),
                    width: double.infinity,
                    height: 50,
                    decoration:  BoxDecoration(
                      color: Colour.grey,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),

                    child: InkWell(
                      child: SizedBox(
                        width: double.infinity,
                        height: double.infinity,
                        child: Center(
                          child: CommonFun.textBold1(
                              "Sign Up"
                              , 16, TextAlign.center, color: Colour.greyText),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignUpScreen()));

                      },
                    ),
                  ),

                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(right: 15, left: 15),
                    width: double.infinity,
                    height: 50,
                    decoration:  BoxDecoration(
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
                          child: CommonFun.textBold1(
                              "Sign In"
                              , 16, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInScreen()));
                      },
                    ),
                  ),
                ],
              ))
        ],
      ),
    ));
  }
}
