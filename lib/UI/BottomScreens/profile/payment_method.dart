import 'package:flutter/material.dart';

import '../../../values/colour.dart';
import '../../../values/commonFun.dart';
import 'add_card.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        iconTheme: IconThemeData(color: Colour.black),
        title: CommonFun.textBold('Payment Method', 16, TextAlign.center, color: Colour.black),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCard()));
            },
            child: Row(
              children: [
                Icon(Icons.add, color: Colour.black.withOpacity(.3)),
              ],
            ),
          ),
        ],
      ),



      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              margin: const EdgeInsets.all(10),
              child: CommonFun.textBold('Saved Card', 16, TextAlign.start, color: Colour.black)),
          Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: 10,
            itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadiusDirectional.circular(10),
                        border: Border.all(
                          color: Colour.pink.withOpacity(.2),
                          width: 1
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(1==1?
                                Icons.radio_button_off:
                                Icons.radio_button_on
                                    ,color: Colour.greyText,size: 20),

                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CommonFun.textReg('**** **** ****2020', 14, TextAlign.center, color: Colour.black.withOpacity(.2)),
                                      CommonFun.textReg('Expiry Month : 10', 12, TextAlign.center, color: Colour.black.withOpacity(.3)),
                                      CommonFun.textReg('Expiry Year : 2026', 12, TextAlign.center, color: Colour.black.withOpacity(.3)),
                                    ],
                                  ),
                                ),
                              ],
                            ),


                            InkWell(
                              onTap: () async {
                                await showDialog(
                                  context: context,
                                  barrierDismissible: true,
                                  builder: (_) {
                                    return deleteDialog();
                                  },
                                );
                              },
                              child: Icon(
                              Icons.delete
                                  ,color: Colour.black.withOpacity(.2),size: 30),
                            ),

                          ],
                        ),
                      ),
                    ),
                  );
            },
          ))
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
                  decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
                  child: const Icon(
                    Icons.delete,color: Colors.white,
                    size: 50,
                  ),
                ),
                const SizedBox(height: 20),
                CommonFun.textBold('Delete Saved Card', 21, TextAlign.center, color: Colour.black),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to delete \n this card', 12, TextAlign.center, color: Colour.black),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 100,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                      ),
                      child: InkWell(
                        child: SizedBox(
                          child: Center(
                            child: CommonFun.textBold("Cancel", 14, TextAlign.center, color: Colour.pink),
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


}
