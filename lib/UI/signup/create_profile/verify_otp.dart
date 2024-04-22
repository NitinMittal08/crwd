
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';
import 'create_password.dart';

class VerifyOtp extends StatefulWidget {
  const VerifyOtp({Key? key}) : super(key: key);

  @override
  State<VerifyOtp> createState() => _VerifyOtpState();
}

class _VerifyOtpState extends State<VerifyOtp> {


  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colour.bgColor,
          title: SizedBox(
            width: MediaQuery.of(context).size.width/1.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
                CommonFun.indicators(2),
              ],
            ),
          ),
          automaticallyImplyLeading: false,

        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonFun.textBold1("Verify Your Email", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please enter your 4 digit code below to verify your Email Address", 12, TextAlign.start, color: Colour.greyText),


                const SizedBox(height: 75,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    CommonFun.textReg("Code", 16, TextAlign.center,color: Colour.greyText),
                    const SizedBox(height: 10),
                    OtpTextField(
                      fieldWidth: 58,
                      fillColor: Colour.pink,
                      borderWidth: 2.0,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      focusedBorderColor: Colour.pink,
                      disabledBorderColor: Colour.grey,
                      enabledBorderColor: Colour.grey,
                      borderRadius: BorderRadius.circular(100),
                      numberOfFields: 4,
                      borderColor:Colors.pink,
                      showFieldAsBox: true,
                      onCodeChanged: (String code) {
                        debugPrint("code =  $code");
                      },
                      onSubmit: (String verificationCode) {
                        // this.verificationCode = verificationCode;
                      }, // end onSubmit
                    ),
                  ],
                ),




                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15,top: 100),
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                      border: Border.all(color: Colour.pink)
                  ),
                  child: InkWell(
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: CommonFun.textBold1("Resend Code", 16, TextAlign.center,
                            color: Colour.pink),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const VerifyOtp()));
                    },
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15,top: 15),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const CreatePassword()));
                    },
                  ),
                ),

              ],
            ),
          ),
        )),
    ));
  }








}

