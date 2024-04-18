import 'package:crwd/values/colour.dart';
import 'package:flutter/material.dart';

import '../../values/commonFun.dart';

class LanguageScreen extends StatefulWidget {
  int from;
   LanguageScreen({Key? key,required this.from}) : super(key: key);

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {

  List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4'];
  List<bool> isSelected = List.generate(4, (index) => false);



  @override
  void initState() {
    super.initState();
    for(int i=0;i<items.length;i++){
      if(i==2) {
        isSelected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        elevation: 0,
        automaticallyImplyLeading: false,

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
              CommonFun.textBold(widget.from == 0?"Change Language":"Language", 16, TextAlign.center, color: Colour.black)
            ],
          ),
        ),
      ),
      backgroundColor: Colour.bgColor,
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount:items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            // Reset all selection to false
                            isSelected = List.generate(4, (index) => false);
                            // Set the current item's selection to true
                            isSelected[index] = true;
                          });
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/image_3.png',
                                      width: 30,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CommonFun.textMed(items[index], 16, TextAlign.center, color: Colour.black)
                                  ],
                                ),
                              ),


                              Image.asset(
                                !isSelected[index]?
                                'assets/images/icon/radio_off.png':'assets/images/icon/radio_on.png', width: 18,)
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 10, left: 10),
                        width: double.infinity,
                        child: Divider(
                          height: 0,
                          color: Colour.greyLine,
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(right: 15, left: 15,bottom: 25),
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
                  child: CommonFun.textBold("Save", 16, TextAlign.center,
                      color: Colour.white),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )

        ],
      ),
    ));
  }
}


