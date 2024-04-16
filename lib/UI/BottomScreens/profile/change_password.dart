import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController emailId = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
              iconTheme: IconThemeData(color: Colour.black),
              backgroundColor: Colour.bgColor,
              title: CommonFun.textBold('Change Password', 16, TextAlign.start, color: Colour.black),
              automaticallyImplyLeading: true),
          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: <Widget>[
                    Container(
                        margin: const EdgeInsets.all(10),
                        child: CommonFun.textReg('Your new password must be different from previous used password', 12, TextAlign.start,
                            color: Colour.black.withOpacity(.3))),

                    Container(
                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: TextField(
                        controller: emailId,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: const Icon(Icons.visibility_off, color: Colors.pink),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Old Password",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),

                    Container(
                      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: TextField(
                        controller: emailId,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: const Icon(Icons.visibility_off, color: Colors.pink),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          labelText: "new Password",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: TextField(
                        controller: emailId,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: const Icon(Icons.visibility_off, color: Colors.pink),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Old Password",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),
                    Expanded(child: Container(color: Colors.transparent)),
                    Container(
                      margin: const EdgeInsets.all(20),
                      alignment: Alignment.center,
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
                            child: CommonFun.textBold("Change Password", 16, TextAlign.center, color: Colour.white),
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
          )
        ));
  }
}
