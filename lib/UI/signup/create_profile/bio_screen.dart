

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
          elevation: 0,
          automaticallyImplyLeading: false,
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
                CommonFun.indicators(6),
              ],
            ),
          ),

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

                    CommonFun.textBold("Bio", 16, TextAlign.start, color: Colour.black),
                    CommonFun.textMed("Please enter your details below", 12, TextAlign.start, color: Colour.greyText),




                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      margin: const EdgeInsets.only( top: 50),
                      child: TextField(
                        maxLines: 10,
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>   InterestScreen(from: 0,)));
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
