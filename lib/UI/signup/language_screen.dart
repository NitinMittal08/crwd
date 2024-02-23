import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({Key? key}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  bool selectLanguage= false;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        title: CommonFun.textBold("Change Language", 16, TextAlign.center, color: Colour.black),
        leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black),
      ),
      backgroundColor: Colour.bgColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          selectLanguage =!selectLanguage;
                          setState(() { });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Image.asset(
                                    'assets/images/image_3.png',
                                    width: 30,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  CommonFun.textMed("English $index", 16, TextAlign.center, color: Colour.black)
                                ],
                              ),
                            ),

                            Icon(selectLanguage?
                              Icons.radio_button_off:
                              Icons.radio_button_on
                              ,color: Colour.greyText,)
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        child: Divider(
                          height: 0,
                          color: Colour.greyLine,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 15, left: 15,bottom: 25),
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
                  child: CommonFun.textBold("Save", 16, TextAlign.center,
                      color: Colour.white),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )

        ],
      ),
    ));
  }
}
