
import 'package:flutter/material.dart';

import '../../values/colour.dart';
import '../../values/commonFun.dart';

class ForgotSuccess extends StatefulWidget {
  String email;
  ForgotSuccess({Key? key, required this.email}) : super(key: key);

  @override
  State<ForgotSuccess> createState() => _ForgotSuccessState();
}

class _ForgotSuccessState extends State<ForgotSuccess> {
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CommonFun.textBold("Forgot Password Link Sent Sucessfuly", 16, TextAlign.center, color: Colour.black),
              const SizedBox(height: 10,),
              CommonFun.textMed("Forgot password link sent your registered \n email Id ${widget.email}", 12, TextAlign.center, color: Colour.greyText),


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
                    Navigator.pop(context);
                  },
                ),
              ),

            ],
          ),
        ),),
    ));
  }
}
