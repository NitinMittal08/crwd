
import 'package:crwd/UI/signup/create_profile/verify_otp.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class CreateProfile extends StatefulWidget {
  const CreateProfile({Key? key}) : super(key: key);

  @override
  State<CreateProfile> createState() => _CreateProfileState();
}

class _CreateProfileState extends State<CreateProfile> {

  TextEditingController emailId =TextEditingController();


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
                CommonFun.indicators(1),
              ],
            ),
          ),
          automaticallyImplyLeading: false,

        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CommonFun.textBold("What’s Your Email?", 16, TextAlign.start, color: Colour.black),
                    CommonFun.textMed("Please enter your email to retrieve your account ", 12, TextAlign.start, color: Colour.greyText),

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
                            child: CommonFun.textBold("Continue", 16, TextAlign.center,
                                color: Colour.white),
                          ),
                        ),
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> const VerifyOtp()));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
    ));
  }

}
