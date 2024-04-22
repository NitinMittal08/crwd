


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
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colour.bgColor,
          title: InkWell(
              onTap: () => Navigator.pop(context),
              child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CommonFun.textBold1("Enter Your Email?", 16, TextAlign.start, color: Colour.blackNew),
                    CommonFun.textMed("Please enter your email to forgot your password", 12, TextAlign.start, color: Colour.greyText),

                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 50),
                      child: TextField(
                        controller: emailId,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon:  Container(
                              padding: const EdgeInsets.all(12),
                              child: Image.asset('assets/images/icon/email.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Email",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),




                    Expanded(child: Container(color: Colors.transparent)),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
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
                            child: CommonFun.textBold1("Continue", 16, TextAlign.center,
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
            ),
          ],
        )



      ),
    ));
  }
}
