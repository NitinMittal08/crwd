

import 'package:crwd/UI/BottomScreens/feed_screen/feed_comments.dart';
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
    return SafeArea(child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
          backgroundColor: Colour.bgColor,
          title: CommonFun.textBold('Feed', 16, TextAlign.start, color: Colour.black),
      automaticallyImplyLeading: false),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [


          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 75,
                        width: 75,
                        margin: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colour.pink,width: 3)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/image_3.png',height: 65,width: 65,fit: BoxFit.fill,),
                          ),
                        ),
                      ),
                      Image.asset('assets/images/edit.png',height: 30,)
                    ],
                  ),
                  CommonFun.textMed('Your Story', 12, TextAlign.center, color: Colour.black)

                ],
              ),

              Container(
                margin: const EdgeInsets.all(5),
                width: MediaQuery.of(context).size.width*.75,
                height: 100,
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,itemBuilder: (context, index) {
                  return  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Colour.pink,width: 3)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset('assets/images/image_3.png',height: 65,width: 65,fit: BoxFit.fill,),
                          ),
                        ),
                      ),

                      CommonFun.textMed('name', 12, TextAlign.center, color: Colour.black)
                    ],
                  );
                },),
              )

            ],
          ),

          Padding(
            padding: const EdgeInsets.only(left: 10 ),
            child: CommonFun.textBold("Feed", 16, TextAlign.start, color: Colour.black),
          ),


          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
              return Card(
                elevation: 1,
                color: Colour.greyLight,
                margin:const EdgeInsets.only(top: 10,right: 10,left: 10),
                shadowColor: Colour.greyLight,
                surfaceTintColor: Colour.greyLight,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colour.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('assets/images/image_3.png',height: 65,width: 65,fit: BoxFit.fill,),
                                ),
                                Container(
                                  margin:const EdgeInsets.only(left: 5),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CommonFun.textBold("Sunday Sqool Comedy", 16, TextAlign.start, color: Colour.black),
                                      CommonFun.textReg("Sunday Sqool Comedy", 12, TextAlign.start, color: Colour.greyText),

                                    ],
                                  ),
                                )
                              ],
                            ),



                            PopupMenuButton<SampleItem>(
                              initialValue: selectedItem,
                              onSelected: (SampleItem item) {
                                setState(() {
                                  selectedItem = item;
                                });
                              },
                              itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                                const PopupMenuItem<SampleItem>(
                                  value: null,
                                  child:Text('Edit'),
                                ),
                                PopupMenuItem<SampleItem>(
                                  value: null,
                                  onTap: () async{
                                    var res = await showDialog(
                                      context: context,
                                      barrierDismissible: true,
                                      builder: (_) {
                                        return deleteDialog();
                                      },
                                    );
                                  },
                                  child:const Text('Delete'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CommonFun.textReg("It is a long established fact that a reader.", 16, TextAlign.start, color: Colour.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CommonFun.textReg("#reader #reader", 16, TextAlign.start, color: Colour.greyText),
                      ),



                      ClipRRect(
                        borderRadius: BorderRadius.circular(0),
                        child: Image.asset('assets/images/image_3.png',height: MediaQuery.of(context).size.height*.3,width: double.infinity,fit: BoxFit.fill,),
                      ),

                      const SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedLikes()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                    margin:const EdgeInsets.only(right: 5,left: 5),
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colour.pink
                                    ),
                                    child: Center(child: Image.asset('assets/images/like.png',height: 10,))
                                  ),
                                  CommonFun.textReg("124 Like", 12, TextAlign.start, color: Colour.black),
                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const FeedComments()));
                              },
                              child: Row(
                                children: [
                                  Container(
                                      margin:const EdgeInsets.only(right: 5,left: 5),
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(50),
                                          color: Colour.pink
                                      ),
                                      child: Center(child: Image.asset('assets/images/comment_icon.png',height: 10,))
                                  ),
                                  CommonFun.textReg("120 Comment", 12, TextAlign.start, color: Colour.black),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),


                      const SizedBox(height: 5,),
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
                                padding:const EdgeInsets.only(top: 10,right: 1,left: 1,bottom: 10),
                                child: Row(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset('assets/images/like.png',height: 15,color: Colour.pink),
                                        const SizedBox(width: 5),
                                        CommonFun.textReg("Like", 12, TextAlign.start, color: Colour.black),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const VerticalDivider(),
                              Padding(
                                padding:const EdgeInsets.only(top: 5,right: 1,left: 1,bottom: 5),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/comment_icon1.png',height: 15),
                                    const SizedBox(width: 5),
                                    CommonFun.textReg("Comment", 12, TextAlign.start, color: Colour.black),
                                  ],
                                ),
                              ),
                              const VerticalDivider(),
                              Padding(
                                padding:const EdgeInsets.only(top: 5,right: 1,left: 1,bottom: 5),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/share.png',height: 15),
                                    const SizedBox(width: 5),
                                    CommonFun.textReg("Share", 12, TextAlign.start, color: Colour.black),
                                  ],
                                ),
                              ),
                              const VerticalDivider(),
                              Padding(
                                padding:const EdgeInsets.only(top: 5,right: 1,left: 1,bottom: 5),
                                child: Row(
                                  children: [
                                    Image.asset('assets/images/report.png',height: 15),
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
            },),
          )
        ],
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
        return Card(
          color: Colour.white,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 20),
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                      color: Colour.pink,
                      borderRadius: BorderRadius.circular(50)
                  ),
                  child:const Icon(Icons.delete,size: 50,),
                ),

                const SizedBox(height: 20),
                CommonFun.textBold('Delete Feed', 21, TextAlign.center, color: Colour.black),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to  \n this feed', 12, TextAlign.center, color: Colour.black),

             const SizedBox(height: 20),
             
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                 Container(
                   width: 100,
                   height: 50,
                   decoration: BoxDecoration(
                     color: Colors.transparent,
                     borderRadius: const BorderRadius.all(
                       Radius.circular(10.0),
                     ),
                   ),
                   child: InkWell(
                     child: SizedBox(
                       child: Center(
                         child: CommonFun.textBold("Cancel", 14, TextAlign.center,
                             color: Colour.pink),
                       ),
                     ),
                     onTap: () {
                       Navigator.pop(context);
                     },
                   ),
                 ),

                 Container(
                   height: 50,
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
                           child: CommonFun.textBold("Delete", 14, TextAlign.center,
                               color: Colour.white),
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

}
