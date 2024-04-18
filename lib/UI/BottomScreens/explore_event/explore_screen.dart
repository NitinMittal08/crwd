import 'package:crwd/UI/BottomScreens/explore_event/explore_details.dart';
import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

enum Swipe { left, right, none }

class _SearchScreenState extends State<SearchScreen> {
  List<Profile> dragabbleItems = [
    const Profile(name: 'nitin', distance: '10 km', imageAsset: 'assets/images/demo_image.png'),
    const Profile(name: 'ved', distance: '10 km', imageAsset: 'assets/images/demo_image.png'),
    const Profile(name: 'qwerty', distance: '10 km', imageAsset: 'assets/images/demo_image.png'),
    const Profile(name: 'qwew', distance: '10 km', imageAsset: 'assets/images/demo_image.png'),
    const Profile(name: 'qwew', distance: '10 km', imageAsset: 'assets/images/demo_image.png'),
  ];

  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colour.bgColor,
          title: CommonFun.textBold('Explore Event', 16, TextAlign.start, color: Colour.black),
          actions: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [

                Image.asset(
                  'assets/images/icon/location.png',
                  width: 13,
                  height: 20,
                  fit: BoxFit.fill,
                ),
                const SizedBox(width: 5),

                InkWell(
                    onTap: () => showModalBottomSheet(
                        backgroundColor: Colors.transparent,
                        context: context,
                        isDismissible: false,
                        isScrollControlled: true,
                        builder: (context) {
                          return FractionallySizedBox(child: _filterBottomSheet(context));
                        }),
                    child: Image.asset(
                      'assets/images/filter.png',
                      width: 50,
                      height: 50,
                      fit: BoxFit.fill,
                    )),

                const SizedBox(width: 5),
              ],
            )
          ],
        ),
        body: Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(3),
              child: ValueListenableBuilder(
                valueListenable: swipeNotifier,
                builder: (context, swipe, _) => Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: List.generate(dragabbleItems.length, (index) {
                    return DragWidget(
                      profile: dragabbleItems[index],
                      index: index,
                      swipeNotifier: swipeNotifier,
                    );
                  }),
                ),
              ),
            ),


            Positioned(
              left: 0,
              child: DragTarget<int>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return IgnorePointer(
                    child: Container(
                      height: 700.0,
                      width: 80.0,
                      color: Colors.transparent,
                    ),
                  );
                },
                onAccept: (int index) {
                  setState(() {
                    dragabbleItems.removeAt(index);
                  });
                },
              ),
            ),
      Positioned(
              right: 0,
              child: DragTarget<int>(
                builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                ) {
                  return IgnorePointer(
                    child: Container(
                      height: 700.0,
                      width: 80.0,
                      color: Colors.transparent,
                    ),
                  );
                },
                onAccept: (int index) {
                  setState(() {
                    dragabbleItems.removeAt(index);
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Profile {
  const Profile({
    required this.name,
    required this.distance,
    required this.imageAsset,
  });

  final String name;
  final String distance;
  final String imageAsset;
}

class DragWidget extends StatefulWidget {
  const DragWidget({
    Key? key,
    required this.profile,
    required this.index,
    required ValueNotifier<Swipe> swipeNotifier,
  }) : super(key: key);
  final Profile profile;
  final int index;

  @override
  State<DragWidget> createState() => _DragWidgetState();
}

class _DragWidgetState extends State<DragWidget> {
  ValueNotifier<Swipe> swipeNotifier = ValueNotifier(Swipe.none);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Draggable<int>(
        // Data is the value this Draggable stores.
        data: widget.index,
        feedback: Material(
          color: Colors.transparent,
          child: ValueListenableBuilder(
            valueListenable: swipeNotifier,
            builder: (context, swipe, _) {
              return RotationTransition(
                turns: swipe != Swipe.none
                    ? swipe == Swipe.left
                        ? const AlwaysStoppedAnimation(-15 / 360)
                        : const AlwaysStoppedAnimation(15 / 360)
                    : const AlwaysStoppedAnimation(0),
                child: Stack(
                  children: [


                    ProfileCard(profile: widget.profile),
                    swipe != Swipe.none
                        ? swipe == Swipe.right
                            ? Positioned(
                                top: 40,
                                left: 20,
                                child: Transform.rotate(
                                  angle: 12,
                                  child: TagWidget(
                                    text: 'LIKE',
                                    color: Colors.green[400]!,
                                  ),
                                ),
                              )
                            : Positioned(
                                top: 50,
                                right: 24,
                                child: Transform.rotate(
                                  angle: -12,
                                  child: TagWidget(
                                    text: 'DISLIKE',
                                    color: Colors.red[400]!,
                                  ),
                                ),
                              )
                        : const SizedBox.shrink(),




                  ],
                ),
              );
            },
          ),
        ),
        onDragUpdate: (DragUpdateDetails dragUpdateDetails) {
          // When Draggable widget is dragged right
          if (dragUpdateDetails.delta.dx > 0 && dragUpdateDetails.globalPosition.dx > MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.right;
          }
          // When Draggable widget is dragged left
          if (dragUpdateDetails.delta.dx < 0 && dragUpdateDetails.globalPosition.dx < MediaQuery.of(context).size.width / 2) {
            swipeNotifier.value = Swipe.left;
          }
        },
        onDragEnd: (drag) {
          swipeNotifier.value = Swipe.none;
        },

        childWhenDragging: Container(
          color: Colors.transparent,
        ),

        child: ProfileCard(profile: widget.profile),
      ),
    );
  }
}

class ProfileCard extends StatefulWidget {
  final Profile profile;

  const ProfileCard({Key? key, required this.profile}) : super(key: key);

  @override
  State<ProfileCard> createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const ExploreDetail()));
      },
      child: Container(
        height: 600,
        width: 340,
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            
            
            
            Positioned.fill(
              bottom: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.profile.imageAsset,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            
            
            
            
            Positioned(
              bottom: 40,
              child: Container(
                height: 100,
                width: 340,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(.2),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  ),
                  shadows: <BoxShadow>[
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 20,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colour.pink,
                              borderRadius: const BorderRadius.all(
                                Radius.circular(6.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: InkWell(
                                child: SizedBox(
                                  child: Center(
                                    child: CommonFun.textReg("Music", 12, TextAlign.start, color: Colour.white),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                          CommonFun.textBold( widget.profile.name, 16, TextAlign.start, color: Colour.white),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/images/icon/location.png',width: 9,height: 13,color: Colour.white,),
                              const SizedBox(width: 3,),
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: MediaQuery.of(context).size.width * .45,
                                ),
                                alignment: Alignment.centerLeft,
                                child: CommonFun.textReg("Sour Mouse  New York, NY", 12, TextAlign.start, color: Colour.white),
                              )
                            ],
                          ),
                        ],
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Image.asset('assets/images/icon/info.png',width: 20,height: 20,color: Colour.white,),
                          const SizedBox(height: 5),
                          CommonFun.textBold(widget.profile.distance, 12, TextAlign.start, color: Colour.white),
                        ],
                      )



                      //

                    ],
                  ),
                ),
              ),
            ),
            
            
            
            
            
            Positioned(
            top: 10,
              right: 10,
              child: Row(
                children: [
                  InkWell(
                    onTap: () async {
                      await showDialog(
                        context: context,
                        barrierDismissible: true,
                        builder: (_) {
                          return boostEventDialog();
                        },
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: 30,height: 30,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                      image: AssetImage("assets/images/circle.png"),
                      fit: BoxFit.fill,
                    )),
                    child: Container(
                        transform: Matrix4.translationValues(0, 0, 0),
                        child: Image.asset('assets/images/thunder.png', width: 15,height: 20,fit: BoxFit.fill,)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(3)),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CommonFun.textReg('20 Apr,2022', 10, TextAlign.center, color: Colour.pink),
                    ),
                  ),
                ],
              ),
            )
            
            
            
            
            
            
          ],
        ),
      ),
    );
  }
}

class TagWidget extends StatelessWidget {
  const TagWidget({
    Key? key,
    required this.text,
    required this.color,
  }) : super(key: key);
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: color,
            width: 4,
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: 36,
        ),
      ),
    );
  }
}

Widget _filterBottomSheet(BuildContext context) {
  double _value = 30;
  double _value1 = 30;

  bool categoryListOpen = false;

  return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadiusDirectional.only(topEnd: Radius.circular(15), topStart: Radius.circular(15)),
        color: Colour.white,
      ),
      child: StatefulBuilder(builder: (context, myState) {
        return Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CommonFun.textBold('Filter', 16, TextAlign.center, color: Colour.black),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/cut.png',
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: double.infinity, child: Divider(thickness: 1)),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonFun.textBold('Category', 16, TextAlign.center, color: Colour.black),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(color: Colour.greyTextField, borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 2.3,
                            fontFamily: "poppins_Reg",
                            color: Colour.black,
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                            suffixIcon: Icon(
                              Icons.keyboard_arrow_down_outlined,
                              color: Colour.grey,
                            ),
                            hintText: "Select Category",
                            labelStyle: TextStyle(color: Colors.pink),
                          ),
                          onTap: () {
                            categoryListOpen = !categoryListOpen;
                            myState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonFun.textMed('Date of Event', 16, TextAlign.center, color: Colour.black),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        decoration: BoxDecoration(color: Colour.greyTextField, borderRadius: BorderRadius.circular(10)),
                        child: TextField(
                          readOnly: true,
                          style: TextStyle(
                            fontSize: 16.0,
                            height: 2.3,
                            fontFamily: "poppins_Reg",
                            color: Colour.black,
                          ),
                          onTap: () async {
                            debugPrint('date picker working');
                            DateTime? pickedDate = await pickDate(context);
                            if (pickedDate != null) {
                              debugPrint(pickedDate.toString());
                              String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                              debugPrint(formattedDate);
                            } else {
                              debugPrint("Date is not selected");
                            }

                            myState(() {});
                          },
                          keyboardType: TextInputType.visiblePassword,
                          //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            fillColor: Colors.white,
                            contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                            suffixIcon: Icon(
                              Icons.calendar_month,
                              color: Colour.grey,
                            ),
                            hintText: "Enter Date Event",
                            labelStyle: const TextStyle(color: Colors.pink),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonFun.textBold('Age Range', 16, TextAlign.center, color: Colour.black),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Slider(
                          activeColor: Colour.pink,
                          value: _value1,
                          max: 100,
                          divisions: 3,
                          label: _value1.round().toString(),
                          min: 1,
                          onChanged: (double value) async {
                            _value1 = value;
                            myState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonFun.textBold('Distance', 16, TextAlign.center, color: Colour.black),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Slider(
                          activeColor: Colour.pink,
                          value: _value,
                          max: 100,
                          divisions: 3,
                          label: _value.round().toString(),
                          min: 1,
                          onChanged: (double value) async {
                            _value = value;
                            myState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 100,
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CommonFun.textBold('Attendee', 16, TextAlign.center, color: Colour.black),
                      SizedBox(
                        height: 40,
                        child: ListView.builder(
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 5),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), color: Colour.greyTextField),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5, bottom: 5, right: 15, left: 15),
                                child: CommonFun.textReg('1-150', 14, TextAlign.center, color: Colour.black),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), color: Colour.greyTextField),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                            child: CommonFun.textBold('Clear', 16, TextAlign.center, color: Colour.pink),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 5),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10), color: Colour.pink),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15, left: 15, top: 8, bottom: 8),
                            child: CommonFun.textBold('Apply Filter', 14, TextAlign.center, color: Colour.greyTextField),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //select category list
            if (categoryListOpen)
              Container(
                  constraints: const BoxConstraints(maxHeight: 200),
                  transform: Matrix4.translationValues(0, 140, 0),
                  margin: const EdgeInsets.only(top: 5, right: 15, left: 15),
                  decoration: BoxDecoration(color: Colour.greyTextField, borderRadius: BorderRadius.circular(10)),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CommonFun.textReg('Filter', 16, TextAlign.start, color: Colour.black),
                      );
                    },
                  )),
          ],
        );
      }));
}

Future<DateTime?> pickDate(BuildContext context) async {
  DateTime? pickedDate = await showDatePicker(
    context: context,
    initialDate: DateTime.now(),
    firstDate: DateTime(2000),
    lastDate: DateTime(2101),
    builder: (BuildContext context, Widget? child) {
      return Theme(
        data: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: Colour.pink, // Change primary color
            onPrimary: Colors.white, // Change text color on primary color
            surface: Colors.green, // Change surface color
            onSurface: Colors.black, // Change text color on surface color
          ),
        ),
        child: child!,
      );
    },
  );
  return pickedDate;
}

Widget boostEventDialog() {
  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    elevation: 0,
    backgroundColor: Colors.white,
    child: StatefulBuilder(builder: (BuildContext context, StateSetter myState) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: AlignmentDirectional.centerEnd,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.only(topStart: Radius.circular(10), topEnd: Radius.circular(10)),
              color: Colour.pink,
            ),
            child: Container(
                margin: const EdgeInsets.only(right: 15, left: 15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CommonFun.textBold('Boost Event', 14, TextAlign.center, color: Colour.white),
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Image.asset(
                          'assets/images/cancel.png',
                          height: 15,
                          width: 15,
                        )),
                  ],
                )),
          ),
          const SizedBox(height: 20),
          Container(
            height: 65,
            width: 65,
            decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
            child: Center(child: Image.asset('assets/images/thunder.png', width: 20,height: 30,fit: BoxFit.fill,))
          ),
          const SizedBox(height: 20),
          CommonFun.textBold('Boost Event', 16, TextAlign.center, color: Colour.black),
          const SizedBox(height: 10),
          CommonFun.textReg('It is a long established fact that a\n  reader will be distracted.', 12, TextAlign.center, color: Colour.black),
          const SizedBox(height: 20),
          CommonFun.textBold('\$60/month', 14, TextAlign.center, color: Colour.pink),
          const SizedBox(height: 20),
          Container(
            height: 40,
            width: 130,
            decoration: BoxDecoration(
              color: Colour.pink,
              borderRadius: const BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: SizedBox(
                  child: Center(
                    child: CommonFun.textBold("Boost Event", 14, TextAlign.center, color: Colour.white),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      );
    }),
  );
}
