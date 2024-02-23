import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  bool status = false;
  List<ModelClass> model = [];

  @override
  void initState() {
    super.initState();
    model.add(ModelClass('My Favourites', 1, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('My Interests ', 2, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('My Events', 3, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Payment Methods', 4, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Change Password', 5, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Add Ads', 6, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Refer User', 7, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Privacy Policy', 8, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Terms & Conditions', 9, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Select Language', 10, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('Rate Us', 11, 'assets/images/crwd_icon.png'));
    model.add(ModelClass('About', 12, 'assets/images/crwd_icon.png'));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        title: const Text('Profile'),
        actions: [
          Container(
            margin:   const EdgeInsets.only(right: 15),
            width: 50,
            height: 20,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colour.grey,
                borderRadius: BorderRadius.circular(15)),
            child: CommonFun.textBold('200', 12, TextAlign.center,color: Colors.pink),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colour.pink, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/image_3.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3, bottom: 3),
                        child: Image.asset(
                          'assets/images/edit.png',
                          height: 20,
                        ),
                      )
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .7,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "120 \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Bold",
                                  color: Colour.pink,
                                  fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Event",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.greyText,
                                      fontSize: 12),
                                ),
                              ]),
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "120 \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Bold",
                                  color: Colour.pink,
                                  fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Follower",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.greyText,
                                      fontSize: 12),
                                ),
                              ]),
                        ),
                        RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                              text: "120k \n",
                              style: TextStyle(
                                  overflow: TextOverflow.ellipsis,
                                  fontFamily: "poppins_Bold",
                                  color: Colour.pink,
                                  fontSize: 18),
                              children: <TextSpan>[
                                TextSpan(
                                  text: "Following",
                                  style: TextStyle(
                                      fontFamily: "poppins_Med",
                                      color: Colour.greyText,
                                      fontSize: 12),
                                ),
                              ]),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CommonFun.textBold('Amie Rosie', 12, TextAlign.start, color: Colors.black),
                        CommonFun.textReg('amierosie@yomail.com', 12, TextAlign.start,
                            color: Colour.greyText),
                      ],
                    ),
                  ),
                  Image.asset(
                    model[1].image.toString(),
                    height: 35,
                  ),
                ],
              ),
            ),
            Container(
              decoration:
                  BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    model[1].image.toString(),
                                    height: 25,
                                  ),
                                  const SizedBox(width: 10),
                                  CommonFun.textBold('Dark Theme', 12, TextAlign.start,
                                      color: Colors.black),
                                ],
                              ),
                              FlutterSwitch(
                                activeColor: Colour.pink,
                                width: 40.0,
                                height: 20.0,
                                toggleSize: 20.0,
                                value: status,
                                borderRadius: 30.0,
                                padding: 3.0,
                                showOnOff: false,
                                onToggle: (val) {
                                  setState(() {
                                    status = val;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          height: 1,
                          thickness: 1,
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: model.length,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          if (model[index].count == 1) {
                            debugPrint('index 1');
                          } else if (model[index].count == 2) {
                            debugPrint('index 2');
                          } else {}
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(
                                          model[index].image.toString(),
                                          height: 25,
                                        ),
                                        const SizedBox(width: 10),
                                        CommonFun.textBold(
                                            model[index].name.toString(), 12, TextAlign.start,
                                            color: Colors.black),
                                      ],
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      color: Colour.greyText,
                                    ),
                                  ],
                                ),
                              ),
                              if (model[index].count != 12)
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
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 15, left: 15, top: 50, bottom: 50),
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
                    child:
                        CommonFun.textBold("Continue", 16, TextAlign.center, color: Colour.white),
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
    ));
  }
}

class ModelClass {
  String? name;
  int? count;
  String? image;

  ModelClass(this.name, this.count, this.image);
}
