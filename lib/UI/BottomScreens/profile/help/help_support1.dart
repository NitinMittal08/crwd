import 'package:flutter/material.dart';

import '../../../../values/colour.dart';
import '../../../../values/commonFun.dart';
import 'help_support2.dart';

class HelpSupport1 extends StatefulWidget {
  const HelpSupport1({super.key});

  @override
  State<HelpSupport1> createState() => _HelpSupport1State();
}

class _HelpSupport1State extends State<HelpSupport1> {
  List model = [
    'How to connect wallet',
    'However a small line',
    'Can I use multiple discount codes?',
    'Will I be charged for an exchange?',
    'Do you accept replacements?',
    'How do I make an exchange?',
    'Are there any return exclusions?'
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.whiteApp,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colour.black),
        backgroundColor: Colour.whiteApp,
        title: SizedBox(
          width: MediaQuery.of(context).size.width / 1.7,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    'assets/images/icon/back_icon.png',
                    width: 16,
                    height: 10,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(width: 10),
              const Text('Guideline', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.only(top: 15, left: 15, bottom: 10),
              child: CommonFun.textBold('Guidelines', 16, TextAlign.start, color: Colour.black)),
          const Divider(
            height: 1,
            thickness: 1,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: model.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HelpSupport2()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5, right: 3, left: 3),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CommonFun.textMed(model[index].toString(), 12, TextAlign.start, color: Colors.black),
                            Center(
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Colour.greyText,
                                size: 15,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 1,
                        thickness: 1,
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    ));
  }
}
