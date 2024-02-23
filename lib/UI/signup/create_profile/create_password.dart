
import 'package:crwd/UI/signup/create_profile/personal_info.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class CreatePassword extends StatefulWidget {
  const CreatePassword({Key? key}) : super(key: key);

  @override
  State<CreatePassword> createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {

  TextEditingController password =TextEditingController();

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
                CommonFun.textBold("Create a Password", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please create your password", 12, TextAlign.start, color: Colour.greyText),




                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    controller: password,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor:Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      hintText: "Your Password",
                      labelStyle: TextStyle(
                          color: Colors.pink
                      ),),
                  ),
                ),






                Container(
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    controller: password,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.0,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.emailAddress, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: const Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      labelText: "Confirm Password",
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
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const PersonalInfo()));
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
