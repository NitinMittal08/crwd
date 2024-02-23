

import 'package:crwd/UI/signup/create_profile/interst_screen.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class BioScreen extends StatefulWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  State<BioScreen> createState() => _BioScreenState();
}

class _BioScreenState extends State<BioScreen> {



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
                CommonFun.textBold("Bio", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please enter your details below", 12, TextAlign.start, color: Colour.greyText),




                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 10,right: 10,top: 35),
                  child: TextField(
                    maxLines: 15,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.2,
                      wordSpacing: 2,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      fillColor:Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      hintText: "Bio",
                      labelStyle: TextStyle(
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const InterestScreen()));
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
