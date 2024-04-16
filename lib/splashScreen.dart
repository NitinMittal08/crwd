

import 'dart:async';

import 'package:crwd/UI/MainScreens/main_page.dart';
import 'package:crwd/UI/signup/onboardScreen/firstScreen.dart';
import 'package:crwd/Util/shared_keys.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {



  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero,() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String screenWay = prefs.getString(SharedKeys.onBoardScreenOn).toString();
      debugPrint('sharedPref value is :  $screenWay');

      Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const FirstScreen())));

/*    if(screenWay == 'true' || screenWay == ''){



     }else {
      Timer(const Duration(seconds: 3), ()=>Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => MainPage(index: 0,))));
    }*/

    });
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      body: Center(
        child: Image.asset('assets/images/splash_logo.png',width: double.infinity),
      ),
    ));
  }
}
