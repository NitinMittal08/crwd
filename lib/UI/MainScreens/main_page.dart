
import 'package:crwd/UI/BottomScreens/ticket_screen/notification_screen.dart';
import 'package:crwd/UI/BottomScreens/explore_event/explore_screen.dart';
import 'package:crwd/UI/BottomScreens/feed_screen/feed_screen.dart';
import 'package:crwd/Util/shared_keys.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../BottomScreens/profile/my_profile.dart';

class MainPage extends StatefulWidget {
  int index;
   MainPage({Key? key , required this.index}) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {



  int pageIndex = 0;

  final pages = [
    const SearchScreen(),
    const FeedScreen(),
    const NotificationScreen(),
    const MyProfile(),
  ];

  @override
  void initState() {
    super.initState();

    pageIndex =widget.index;

    Future.delayed(Duration.zero,() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(SharedKeys.onBoardScreenOn, 'false');
    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xffC4DFCB),
      backgroundColor: Colour.white,
      body: pages[pageIndex],
      bottomNavigationBar: buildMyBottomNav(context),

      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,

      floatingActionButton: FloatingActionButton(
        focusElevation: 0,
        onPressed: () {},
        child: Image.asset('assets/images/crwd_icon.png'),
      ),


    );
  }
 BottomAppBar buildMyBottomNav(BuildContext context) {
   return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 5,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child:  InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      pageIndex = 0;
                    });
                  },
                  child: SizedBox(
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(
                      child: Image.asset('assets/images/bottom_sheet/search.png',width: 25,height: 25,
                          color:  pageIndex == 0 ? Colour.black : Colour.blackShade),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    setState(() {
                      pageIndex = 1;
                    });
                  },
                  child: Container(
                    transform: Matrix4.translationValues(-10, 0, 0),
                    height: double.infinity,
                    width: double.infinity,
                    child: Center(
                      child: Image.asset('assets/images/bottom_sheet/wifi.png',width: 25,height: 25,
                          color:  pageIndex == 1 ? Colour.black : Colour.blackShade),
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    pageIndex = 2;
                  });
                },
                child: Container(
                  transform: Matrix4.translationValues(10, 0, 0),
                  height: double.infinity,
                  width: double.infinity,
                  child: Center(
                    child: Image.asset('assets/images/bottom_sheet/notification.png',width: 28,height: 28,
                        color:  pageIndex == 2 ? Colour.black : Colour.blackShade),
                  ),
                ),
              ),
            ),


            Expanded(
              flex: 1,
              child: InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  setState(() {
                    pageIndex = 3;
                  });
                },
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Center(
                    child: Image.asset('assets/images/bottom_sheet/profile.png',width: 25,height: 25,
                        color:  pageIndex == 3 ? Colour.black : Colour.blackShade),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
