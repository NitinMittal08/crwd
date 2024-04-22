import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {

  TextEditingController oldPassword = TextEditingController();
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();


  bool oldPasswordVisible =false;
  bool newPasswordVisible =false;
  bool confirmPasswordVisible =false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
              iconTheme: IconThemeData(color: Colour.black),
              backgroundColor: Colour.bgColor,
              elevation: 0,

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
                    CommonFun.textBold1('Change Password', 16, TextAlign.start, color: Colour.black),
                  ],
                ),
              ),
              automaticallyImplyLeading: false),
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
                        obscureText: !oldPasswordVisible?true:false,
                        controller: oldPassword,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: InkWell(
                            onTap: () {
                              oldPasswordVisible =! oldPasswordVisible;
                              setState(() { });
                            },
                            child: Container(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                    !oldPasswordVisible?
                                    'assets/images/icon/password_hide.png':'assets/images/icon/password_show.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Old Password",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),

                    Container(
                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only(left: 15, right: 15, top: 20),
                      child: TextField(
                        obscureText: !newPasswordVisible?true:false,
                        controller: newPassword,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: InkWell(
                            onTap: () {
                              newPasswordVisible =! newPasswordVisible;
                              setState(() { });
                            },
                            child: Container(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                    !newPasswordVisible?
                                    'assets/images/icon/password_hide.png':'assets/images/icon/password_show.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "New Password",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),




                    Container(
                      decoration: BoxDecoration(color: Colour.whiteApp, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                      child: TextField(
                        obscureText: !confirmPasswordVisible?true:false,
                        controller: confirmPassword,
                        style: TextStyle(
                          fontSize: 14.0,
                          height: 1.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon: InkWell(
                            onTap:() {
                              confirmPasswordVisible = !confirmPasswordVisible;
                              setState(() { });
                            },
                            child: Container(
                                padding: const EdgeInsets.all(12),
                                child: Image.asset(
                                    !confirmPasswordVisible?
                                    'assets/images/icon/password_hide.png':'assets/images/icon/password_show.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Confirm New Password",
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
                            child: CommonFun.textBold1("Change Password", 16, TextAlign.center, color: Colour.white),
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
