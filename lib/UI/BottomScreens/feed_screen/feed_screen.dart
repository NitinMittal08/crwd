import 'package:crwd/UI/BottomScreens/feed_screen/add_ad.dart';
import 'package:crwd/UI/BottomScreens/feed_screen/feed_comments.dart';
import 'package:crwd/UI/BottomScreens/feed_screen/status_show.dart';
import 'package:crwd/values/colour.dart';
import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';

import 'feed_likes.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key? key}) : super(key: key);

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

enum SampleItem { edit, delete }

class _FeedScreenState extends State<FeedScreen> {
  SampleItem? selectedItem;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
          backgroundColor: Colour.bgColor,
          title:  CommonFun.textBold('Story', 16, TextAlign.start, color: Colour.black),
          elevation: 0,
          automaticallyImplyLeading: false),





      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child:   Row(
                children: [


                  Column(
                    children: [
                      Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Container(
                            height: 65,
                            width: 65,
                            margin: const EdgeInsets.all(5),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset(
                                  'assets/images/image_3.png',
                                  height: 65,
                                  width: 65,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              transform: Matrix4.translationValues(-3, -3, -3),
                              child: Image.asset(
                                'assets/images/edit.png',
                                height: 25,
                              ))
                        ],
                      ),
                      CommonFun.textMed('Your Story', 12, TextAlign.center, color: Colour.greyText)
                    ],
                  ),


                  SizedBox(
                    height: 98,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> const StatusShow()));
                              },
                              child: Container(
                                height: 65,
                                width: 65,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colour.pink, width: 3)),
                                child: Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/image_3.png',
                                      height: 65,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CommonFun.textMed('name', 12, TextAlign.center, color: Colour.black)
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: CommonFun.textBold("Feed", 16, TextAlign.start, color: Colour.black),
            ),


            ListView.builder(
              shrinkWrap: true,
              itemCount: 10,physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  color: Colour.greyLight,
                  margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
                  shadowColor: Colour.greyLight,
                  surfaceTintColor: Colour.greyLight,
                  child: Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/image_3.png',
                                      height: 65,
                                      width: 65,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CommonFun.textBold("Sunday Sqool Comedy", 16, TextAlign.start, color: Colour.blackNew),
                                        CommonFun.textReg("2 hr ago", 12, TextAlign.start, color: Colour.greyText),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              PopupMenuButton<SampleItem>(
                                icon:Icon(
                                  Icons.more_vert, // Change the icon here
                                  color: Colour.greyText, // Change the color here
                                ),
                                initialValue: selectedItem,
                                onSelected: (SampleItem item) {
                                  setState(() {
                                    selectedItem = item;
                                  });
                                },
                                itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                                  const PopupMenuItem<SampleItem>(
                                    value: null,
                                    child: Text('Edit'),
                                  ),
                                  PopupMenuItem<SampleItem>(
                                    value: null,
                                    onTap: () async {
                                        await showDialog(
                                        context: context,
                                        barrierDismissible: true,
                                        builder: (_) {
                                          return deleteDialog();
                                        },
                                      );
                                    },
                                    child: const Text('Delete'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CommonFun.textReg("It is a long established fact that a reader.", 12, TextAlign.start, color: Colour.black),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CommonFun.textReg("#reader #reader #reader #reader", 12, TextAlign.start, color: Colour.pink),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0),
                          child: Image.asset(
                            'assets/images/image_3.png',
                            height: MediaQuery.of(context).size.height * .3,
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedLikes()));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(right: 5, left: 5),
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colour.pink),
                                        child: Center(
                                            child: Image.asset(
                                          'assets/images/like.png',
                                          height: 10,
                                        ))),
                                    CommonFun.textReg("124 Likes", 12, TextAlign.start, color: Colour.black),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FeedComments()));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.only(right: 5, left: 5),
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), color: Colour.pink),
                                        child: Center(
                                            child: Image.asset(
                                          'assets/images/comment_icon.png',
                                          height: 10,
                                        ))),
                                    CommonFun.textReg("120 Comments", 12, TextAlign.start, color: Colour.black),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 1,
                          thickness: 1,
                          color: Colour.grey,
                        ),
                        IntrinsicHeight(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(top: 10, right: 1, left: 1, bottom: 10),
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset('assets/images/like.png', height: 15, color: Colour.pink),
                                      const SizedBox(width: 5),
                                      CommonFun.textReg("Like", 12, TextAlign.start, color: Colour.black),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const VerticalDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 1, left: 1, bottom: 5),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/comment_icon1.png', height: 15),
                                  const SizedBox(width: 5),
                                  CommonFun.textReg("Comment", 12, TextAlign.start, color: Colour.black),
                                ],
                              ),
                            ),
                            const VerticalDivider(),
                            InkWell(
                              onTap: () => showModalBottomSheet(
                                  backgroundColor: Colors.transparent,
                                  context: context,
                                  isDismissible: false,
                                  isScrollControlled: true,
                                  builder: (context) {
                                    return _shareBottomSheet(context);
                                  }),
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5, right: 1, left: 1, bottom: 5),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/share.png', height: 15),
                                    const SizedBox(width: 5),
                                    CommonFun.textReg("Share", 12, TextAlign.start, color: Colour.black),
                                  ],
                                ),
                              ),
                            ),
                            const VerticalDivider(),
                            Padding(
                              padding: const EdgeInsets.only(top: 5, right: 1, left: 1, bottom: 5),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/report.png', height: 15),
                                  const SizedBox(width: 5),
                                  CommonFun.textReg("Report", 12, TextAlign.start, color: Colour.black),
                                ],
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),

          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colour.pink,
            child: Center(child: Image.asset('assets/images/icon/add.png',width: 29,height: 29,)),

          ),
    ));
  }



  Widget deleteDialog() {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: StatefulBuilder(builder: (BuildContext context, StateSetter myState) {
        return Container(
          decoration: BoxDecoration(
              color: Colour.whiteApp,
              borderRadius: BorderRadiusDirectional.circular(15)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
                  child: Center(
                    child: Image.asset('assets/images/icon/delete.png',width: 50),
                  ),
                ),
                const SizedBox(height: 20),
                CommonFun.textBold('Delete Feed', 20, TextAlign.center, color: Colour.blackNew1),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to  \n this feed', 12, TextAlign.center, color: Colour.greyText1),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration:  BoxDecoration(
                        color: Colour.white,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: SizedBox(
                          child: Center(
                            child: CommonFun.textBold("Cancel", 14, TextAlign.center, color: Colour.greyText),
                          ),
                        ),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 100,
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
                              child: CommonFun.textBold("Delete", 14, TextAlign.center, color: Colour.white),
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        );
      }),
    );
  }


  List<String> items = ['Afshin', 'Afshin', 'Afshin', 'Afshin', 'Afshin', 'Afshin', 'Afshin'];
  List<bool> isSelected = List.generate(7, (index) => false);


  Widget _shareBottomSheet(BuildContext context) {
    return StatefulBuilder(builder: (context, myState) {
      return Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 360,
            decoration: BoxDecoration(
              borderRadius: const BorderRadiusDirectional.only(topEnd: Radius.circular(15), topStart: Radius.circular(15)),
              color: Colour.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [

                  Container(
                    decoration: BoxDecoration(
                        color: Colour.greyTextField,
                        borderRadius: BorderRadiusDirectional.circular(10)
                    ),
                    alignment: Alignment.center,
                    height: 45,
                    margin: const EdgeInsets.only(top: 10, bottom: 15),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colour.grey,
                        ),
                        hintText: "Search here....",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),


                  InkWell(
                highlightColor: Colors.transparent,
                splashColor: Colors.transparent,
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddAd()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadiusDirectional.circular(50),
                            child: Image.asset(
                              'assets/images/image_3.png',
                              width: 22,height: 22,fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          CommonFun.textMed('Add post your story', 12, TextAlign.center, color: Colour.black)
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios_rounded,color: Colour.greyText, size: 15,)
                  ],
                ),
              ),
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 45),
                      physics: const BouncingScrollPhysics(),
                      itemCount:items.length,
                      itemBuilder: (context, index) {
                        return  InkWell(
                          highlightColor: Colors.transparent,
                          splashColor: Colors.transparent,
                          onTap: () {
                            myState(() {
                              isSelected = List.generate(7, (index) => false);
                              isSelected[index] = true;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadiusDirectional.circular(50),
                                      child: Image.asset(
                                        'assets/images/image_3.png',
                                        width: 22,height: 22,fit: BoxFit.fill,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CommonFun.textMed(items[index], 12, TextAlign.center, color: Colour.black)
                                  ],
                                ),
                              ),


                              Image.asset(
                                !isSelected[index]?
                                'assets/images/icon/radio_off.png':'assets/images/icon/radio_on.png', width: 14,)
                            ],
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 15, left: 15, bottom: 10),
            width: double.infinity,
            height: 45,
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
                  CommonFun.textBold("Share", 16, TextAlign.center, color: Colour.white),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),

        ],
      );
    });
  }




}
