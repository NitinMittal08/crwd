
import 'package:crwd/UI/MainScreens/main_page.dart';
import 'package:flutter/material.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({Key? key}) : super(key: key);

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  List<String> interestList =['Music','Art','Sport','Party','Food','Travel'];

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
        backgroundColor: Colour.bgColor,
        appBar: AppBar(
          backgroundColor: Colour.bgColor,
          leading: BackButton(
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.black
          ),

        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonFun.textBold("Select Your Interest", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please select at least one category ", 12, TextAlign.start, color: Colour.greyText),


                Container(
                  margin:const EdgeInsets.only(top: 20),
                  height: 550,
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: EdgeInsets.zero,
                    shrinkWrap: false,
                    children: List.generate(interestList.length, (index) {
                      return Container(
                        decoration: BoxDecoration(
                            color: Colour.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius:const  BorderRadius.only(topLeft: Radius.circular(15),topRight: Radius.circular(15)),
                              child: Image.asset('assets/images/onboard_screen/screen_one.png',
                                  height: 150,width: double.infinity,fit: BoxFit.fill,),
                            ),
                            Container(
                              margin:const EdgeInsets.only(top: 10),
                              child: CommonFun.textBold(interestList[index].toString(), 14, TextAlign.center, color: Colour.black),
                            ),
                          ],
                        ),
                      );
                    },),
                  ),
                ),




                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15,top: 100),
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
                        child: CommonFun.textBold("Continue", 16, TextAlign.center,
                            color: Colour.white),
                      ),
                    ),
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> const MainPage()));
                    },
                  ),
                ),

              ],
            ),
          ),
        ),),
    ));
  }

}
