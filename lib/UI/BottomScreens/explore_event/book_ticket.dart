import 'package:crwd/UI/BottomScreens/explore_event/payment_screen/check_out.dart';
import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class BookTicket extends StatefulWidget {
  const BookTicket({Key? key}) : super(key: key);

  @override
  State<BookTicket> createState() => _BookTicketState();
}

class DemModel {
  String? name;
  int count = 0;
  int totalPrice = 0;

  DemModel(this.name, this.count, this.totalPrice);
}

class _BookTicketState extends State<BookTicket> {
  List<DemModel> model = [];
  int qwerty = 0;

  @override
  void initState() {
    super.initState();

    model.add(DemModel('name 1', 0, 0));
    model.add(DemModel('name 2', 0, 0));
    model.add(DemModel('name 3', 0, 0));
    model.add(DemModel('name 4', 0, 0));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        iconTheme: IconThemeData(color: Colour.black),
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
              const SizedBox(width: 8),
              CommonFun.textBold1('Book Ticket', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),

      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: model.length,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 1,
                        color: Colour.white,
                        shadowColor: Colour.bgColor,
                        shape: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(10)
                          ),
                          height: 80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        height: 80,
                                        width: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), bottomLeft: Radius.circular(10)),
                                          color: Colour.greyBorder,
                                        ),
                                        child: CommonFun.textBold1(model[index].count.toString(), 21, TextAlign.center, color: Colour.greyText),
                                      ),
                                      const SizedBox(width: 5),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: const EdgeInsets.only(top: 10),
                                            child: CommonFun.textBold1(model[index].name.toString(), 14, TextAlign.center, color: Colour.black),
                                          ),
                                          RichText(
                                            textAlign: TextAlign.start,
                                            text: TextSpan(
                                                text: "19 May 2022-",
                                                style: TextStyle(
                                                    overflow: TextOverflow.ellipsis, fontFamily: "poppins_Med", color: Colour.greyText, fontSize: 12),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: "2:30am",
                                                    style: TextStyle(fontFamily: "poppins_Med", color: Colour.greyText, fontSize: 12),
                                                  ),
                                                ]),
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                child: CommonFun.textReg("${model[index].count.toString()} * ", 14, TextAlign.start,
                                                    color: Colour.pink),
                                              ),
                                              Container(
                                                child: CommonFun.textReg("120 = ", 14, TextAlign.start, color: Colour.pink),
                                              ),
                                              Container(
                                                child: CommonFun.textReg(model[index].totalPrice.toString(), 14, TextAlign.start,
                                                    color: Colour.pink),
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(
                                    height: 80,
                                    child: VerticalDivider(
                                      width: 1,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          if (model[index].count < 5) {
                                            model[index].count++;
                                            model[index].totalPrice = 120 * model[index].count;

                                            qwerty = 0;
                                            for (int i = 0; i < model.length; i++) {
                                              qwerty = qwerty + model[i].totalPrice;
                                            }
                                          }
                                          setState(() {});
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Icon(Icons.add,color: Colour.pink,),
                                        ),
                                      ),
                                      Container(
                                        width: 40,
                                        child: const Divider(),
                                      ),
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () {
                                          if (model[index].count > 0) {
                                            model[index].count--;
                                            model[index].totalPrice = 120 * model[index].count;

                                            qwerty = 0;
                                            for (int i = 0; i < model.length; i++) {
                                              qwerty = qwerty + model[i].totalPrice;
                                            }
                                          }

                                          setState(() {});
                                        },
                                        child: Container(
                                          transform: Matrix4.translationValues(0, -10, 0),
                                          child:   Icon(Icons.minimize,color: Colour.pink,),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),




          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 20,right: 25,left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        child: CommonFun.textBold1('Total : ', 14, TextAlign.start, color: Colour.black),
                      ),
                      Container(
                        child: CommonFun.textBold1("\$${qwerty.toString()}", 14, TextAlign.start, color: Colour.pink),
                      ),
                    ],
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 44,
                    padding: const EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      color: Colour.pink,
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(right: 5, left: 5),
                        child: Center(
                          child: CommonFun.textBold1("Check out", 14, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const CheckOut()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          )



        ],
      ),
    ));
  }
}
