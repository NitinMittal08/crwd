
import 'package:crwd/UI/BottomScreens/ticket_screen/notification_screen.dart';
import 'package:crwd/UI/BottomScreens/profile/profile_screen.dart';
import 'package:crwd/UI/BottomScreens/explore_event/explore_screen.dart';
import 'package:crwd/UI/BottomScreens/feed_screen/feed_screen.dart';
import 'package:crwd/Util/shared_keys.dart';
import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _HomePageState();
}

class _HomePageState extends State<MainPage> {



  int pageIndex = 0;

  final pages = [
    const SearchScreen(),
    const FeedScreen(),
    const NotificationScreen(),
    const ProfileScreen(),
  ];

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero,() async{
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(SharedKeys.onBoardScreenOn, 'false');
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colour.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              width: size.width,
              height: 80,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPaint(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(
                        shape: UnderlineInputBorder(borderRadius: BorderRadius.circular(50)),
                        child: Image.asset('assets/images/crwd_icon.png'),
                        onPressed: () {}),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [

                        InkWell(
                          onTap: () {
                            setState(() {
                              pageIndex = 0;
                            });
                          },
                          child: SizedBox(
                            height: 25,
                            child: Image.asset('assets/images/bottom_sheet/search.png',
                                color:  pageIndex == 0 ? Colour.black : Colour.blackShade),
                          ),
                        ),



                        InkWell(
                          onTap: () {
                            setState(() {
                              pageIndex = 1;
                            });
                          },
                          child: SizedBox(
                            height: 25,
                            child: Image.asset('assets/images/bottom_sheet/wifi.png',
                                color:  pageIndex == 1 ? Colour.black : Colour.blackShade),
                          ),
                        ),


                        Container(
                          width: size.width * 0.20,
                        ),


                        InkWell(
                          onTap: () {
                            setState(() {
                              pageIndex = 2;
                            });
                          },
                          child: SizedBox(
                            height: 18,
                            child: Image.asset('assets/images/bottom_sheet/notification.png',
                                color:  pageIndex == 2 ? Colour.black : Colour.blackShade),
                          ),
                        ),


                        InkWell(
                          onTap: () {
                            setState(() {
                              pageIndex = 3;
                            });
                          },
                          child: SizedBox(
                            height: 25,
                            child: Image.asset('assets/images/bottom_sheet/profile.png',
                                color:  pageIndex == 3 ? Colour.black : Colour.blackShade),
                          ),
                        ),


                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      )


     /* Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
              Icons.home_filled,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
              Icons.work_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.work_outline_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
              Icons.widgets_rounded,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.widgets_outlined,
              color: Colors.white,
              size: 35,
            ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
              Icons.person,
              color: Colors.white,
              size: 35,
            )
                : const Icon(
              Icons.person_outline,
              color: Colors.white,
              size: 35,
            ),
          ),
        ],
      ),*/
    );
  }
}

class BNBCustomPaint extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    // path.moveTo(0,10);
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: const Radius.circular(40.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }


}