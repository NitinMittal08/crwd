
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
          automaticallyImplyLeading: false,
          elevation: 0,
          backgroundColor: Colour.bgColor, 
          title: InkWell(
              onTap: () => Navigator.pop(context),
              child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),


        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Container(
                    transform: Matrix4.translationValues(0, MediaQuery.of(context).size.height/3, 0),
                    child: Column(
                      children: [
                        CommonFun.textBold1("Forgot Password Link Sent Sucessfuly", 16, TextAlign.center, color: Colour.blackNew),
                        const SizedBox(height: 10,),
                        CommonFun.textMed("Forgot password link sent your registered \n email Id ${widget.email}", 12, TextAlign.center, color: Colour.greyText),
                      ],
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
                          child: CommonFun.textBold1("Continue", 16, TextAlign.center,
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
            ),
          ],
        ),
      ),
    ));
  }
}
