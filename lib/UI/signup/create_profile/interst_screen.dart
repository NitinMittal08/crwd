import 'package:crwd/UI/MainScreens/main_page.dart';
import 'package:flutter/material.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class InterestScreen extends StatefulWidget {


  InterestScreen({Key? key,}) : super(key: key);

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}
class ModelInterest {
  String? image;
  String? name;

  ModelInterest(this.image, this.name);
}


class _InterestScreenState extends State<InterestScreen> {

  List<ModelInterest> interestList = [];

  @override
  void initState() {
    super.initState();
    interestList.add(ModelInterest('assets/images/profile/music.png', 'Music'));
    interestList.add(ModelInterest('assets/images/profile/art.png', 'Art'));
    interestList.add(ModelInterest('assets/images/profile/sport.png', 'Sport'));
    interestList.add(ModelInterest('assets/images/profile/party.png', 'Party'));
    interestList.add(ModelInterest('assets/images/profile/food.png', 'Food'));
    interestList.add(ModelInterest('assets/images/profile/traval.png', 'Travel'));
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus!.unfocus(),
      child: Scaffold(
          backgroundColor: Colour.bgColor,
          appBar: AppBar(
            elevation: 0,
            automaticallyImplyLeading: false,
            backgroundColor: Colour.bgColor,
            title: SizedBox(
              width: MediaQuery.of(context).size.width / 1.7,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Image.asset(
                        'assets/images/icon/back_icon.png',
                        width: 16,
                        height: 10,
                        fit: BoxFit.fill,
                      )),
               CommonFun.indicators(7)
                ],
              ),
            ),
          ),
          body: Container(
            margin: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CommonFun.textBold1("Select Your Interest", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please select at least one category ", 12, TextAlign.start, color: Colour.greyText),


                const SizedBox(height: 15),
               /* Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 130,
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              child: Image.asset(
                                'assets/images/onboard_screen/screen_one.png',
                                height: 120,
                                width: double.infinity,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: CommonFun.textReg(interestList[index].toString(), 14, TextAlign.center, color: Colour.pink),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),*/

                SizedBox(
                  height: 450,
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: 5,
                    shrinkWrap: false,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Center(
                          child: Image.asset(
                            interestList[index].image.toString(),
                            height: 74,
                            width: 83,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      );
                    },
                  ),
                ),


                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 15, left: 15, top: 15),
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
                        child: CommonFun.textBold1("Continue", 16, TextAlign.center, color: Colour.white),
                      ),
                    ),
                    onTap: () {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainPage(index: 0,)), (route) => false);
                    },
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
