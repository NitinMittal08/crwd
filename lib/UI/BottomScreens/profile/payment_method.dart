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
          backgroundColor: Colour.bgColor,
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
              CommonFun.textBold('Payment Method', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),


        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddCard()));
            },
            child: Row(
              children: [
                Icon(Icons.add, color: Colour.greyText),
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
                          color: Colour.divideLine,
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


                          Image.asset(
                            1 !=index
                                ? 'assets/images/icon/radio_off.png'
                                : 'assets/images/icon/radio_on.png'
                            ,width: 15,height: 15,fit: BoxFit.fill),

                                Container(
                                  margin: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CommonFun.textReg('**** **** ****2020', 14, TextAlign.center, color: Colour.black),
                                      CommonFun.textReg('Expiry Month : 10', 12, TextAlign.center, color: Colour.greyText),
                                      CommonFun.textReg('Expiry Year : 2026', 12, TextAlign.center, color: Colour.greyText),
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
                              child: Container(
                                  padding: const EdgeInsets.all(5),
                                  child: Image.asset('assets/images/icon/delete.png',width: 15,height: 20,fit: BoxFit.fill,color: Colour.pink,)),
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
                CommonFun.textBold('Delete Saved Card', 20, TextAlign.center, color: Colour.blackNew1),
                const SizedBox(height: 10),
                CommonFun.textReg('Are you sure you want to delete \n this card', 12, TextAlign.center, color: Colour.greyText1),
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


}
