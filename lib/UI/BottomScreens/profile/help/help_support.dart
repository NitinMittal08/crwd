

import 'package:flutter/material.dart';

import '../../../../values/colour.dart';
import '../../../../values/commonFun.dart';
import 'help_support1.dart';

class HelpSupport extends StatefulWidget {
  const HelpSupport({super.key});

  @override
  State<HelpSupport> createState() => _HelpSupportState();
}

class _HelpSupportState extends State<HelpSupport> {

  List model = ['Guidelines','Report Problems','Report Problems','FAQ'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

      backgroundColor: Colour.whiteApp,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colour.black),
        backgroundColor: Colour.whiteApp,


        title: SizedBox(
          width: MediaQuery.of(context).size.width/1.7,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
              const SizedBox(width: 10),
              CommonFun.textBold1('Help & Support', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),

      body:  ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: model.length,
        itemBuilder: (context, index) {
          return InkWell(

            child: Padding(
              padding: const EdgeInsets.only(top: 5,bottom: 5,right: 3,left: 3),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      if (index == 1) {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const HelpSupport1()));
                      }
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          CommonFun.textMed(
                            model[index].toString(), 12, TextAlign.start,
                            color: Colors.black),

                          Center(
                            child: Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colour.greyText,size: 15,
                            ),
                          ),
                        ],
                      ),
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
    ));
  }
}
