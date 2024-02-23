


import 'package:crwd/UI/signup/forgot_success.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {

  TextEditingController emailId =TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
          leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonFun.textBold("Enter Your Email?", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please enter your email to forgot your password", 12, TextAlign.start, color: Colour.greyText),

                Container(
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    controller: emailId,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.0,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.emailAddress, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon: const Icon(Icons.email_outlined),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.pink, width: 2.0),
                          borderRadius: BorderRadius.circular(10.0),
                        ),

                        labelText: "Email",
                        labelStyle: const TextStyle(
                          color: Colors.pink
                        ),),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15,top: 100),
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
                        child: CommonFun.textBold("Continue", 16, TextAlign.center,
                            color: Colour.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> ForgotSuccess(email: emailId.text)));
                    },
                  ),
                ),

              ],
            ),
          ),
        ),),
    ));
  }
}
