import 'package:flutter/material.dart';

import '../../values/colour.dart';
import '../../values/commonFun.dart';
import 'host_basic_1.dart';

class HostBasic extends StatefulWidget {
  int from;
  HostBasic({super.key, required this.from});

  @override
  State<HostBasic> createState() => _HostBasicState();
}

class ModelInterest {
  String? image;
  String? name;

  ModelInterest(this.image, this.name);
}

class _HostBasicState extends State<HostBasic> {
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
        child: Scaffold(
      backgroundColor: Colour.whiteApp,
      appBar: AppBar(
        backgroundColor: Colour.whiteApp,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: SizedBox(
          width: MediaQuery.of(context).size.width / 1.7,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Image.asset(
                    'assets/images/icon/back_icon.png',
                    width: 16,
                    height: 10,
                    fit: BoxFit.fill,
                  )),
              const SizedBox(width: 10),
              CommonFun.textBold1((widget.from == 0) ?'Host Event':'My Interest', 16, TextAlign.center, color: Colour.black),

            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CommonFun.textBold1((widget.from == 0)?"Select Category":'Select Your Interest', 18, TextAlign.start, color: Colour.black),
              if(widget.from != 0)
              CommonFun.textReg('Please select at least one category', 12, TextAlign.start, color: Colour.divideLine4),
              const SizedBox(height: 8),
              SizedBox(
                height: 450,
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
                margin: const EdgeInsets.only(top: 25, bottom: 20),
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
                      child: CommonFun.textBold1((widget.from == 0)?"Next":'Save', 16, TextAlign.center, color: Colour.white),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const HostBasicOne()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
