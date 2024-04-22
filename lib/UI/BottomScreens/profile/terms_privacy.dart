import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class TermsPrivacy extends StatefulWidget {
  // from means 0=privacy , 1=terms
  int from;

  TermsPrivacy({super.key, required this.from});

  @override
  State<TermsPrivacy> createState() => _TermsPrivacyState();
}

class _TermsPrivacyState extends State<TermsPrivacy> {
  String htmlContent = '';

  @override
  void initState() {
    super.initState();
    loadHtmlFromAssets().then((value) {
      setState(() {
        htmlContent = value;
      });
    });
  }

  Future<String> loadHtmlFromAssets() async {
    if (widget.from == 0) {
      return await rootBundle.loadString('lib/html_code/privacy.html');
    }
    if (widget.from == 1) {
      return await rootBundle.loadString('lib/html_code/terms.html');
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: Colour.white,
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
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
                CommonFun.textBold1((widget.from == 0) ?'Privacy': 'Terms & Conditions', 16, TextAlign.center, color: Colour.black),
              ],
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
        ),




        body: SingleChildScrollView(child: Html(data: htmlContent))));
  }
}
