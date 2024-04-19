import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../values/colour.dart';

class OrganizerReviews extends StatefulWidget {
  const OrganizerReviews({Key? key}) : super(key: key);

  @override
  State<OrganizerReviews> createState() => _OrganizerReviewsState();
}

class _OrganizerReviewsState extends State<OrganizerReviews> {
  String qw = '“Lorem ips dolor sit amet, consectetur adipisci elit, sed eius mod tempor incidunt ut labore et dolore magna aliqua.”';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colour.bgColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colour.bgColor,
        iconTheme: IconThemeData(color: Colour.black),
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
              CommonFun.textBold('Organizer Reviews', 16, TextAlign.center, color: Colour.black),
            ],
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
                elevation: 1,
                child: Row(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15, bottom: 15, left: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(color: Colour.pink, borderRadius: BorderRadius.circular(50)),
                          child: Center(child: CommonFun.textBold('4.4', 14, TextAlign.center, color: Colour.white)),
                        ),
                        Container(
                            margin: const EdgeInsets.only(top: 8, left: 10),
                            child: CommonFun.textBold('520 reviews', 12, TextAlign.center, color: Colour.black)),
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          child: RatingBar.builder(
                            initialRating: 4,
                            minRating: 1,
                            glow: false,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            unratedColor: Colour.starUnselected,
                            itemPadding: EdgeInsets.zero,
                            itemCount: 5,
                            itemSize: 20,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star_rate_rounded,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              debugPrint(rating.toString());
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 15, right: 10),
                    width: 200,
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return LinearPercentIndicator(
                          width: 120.0,
                          animation: true,
                          animationDuration: 1000,
                          lineHeight: 6.0,
                          leading: CommonFun.textReg('5 Stars', 10, TextAlign.start, color: Colour.black),
                          trailing: CommonFun.textReg('200', 10, TextAlign.start, color: Colour.greyText),
                          percent: 0.2,
                          barRadius: const Radius.circular(10),
                          linearStrokeCap: LinearStrokeCap.butt,
                          progressColor: Colour.startColor,
                        );
                      },
                    ),
                  ),
                ]),
              ),

              const SizedBox(height: 10),

              Card(
                shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide.none),
                elevation: 1,
                color: Colour.greyLight,
                shadowColor: Colour.greyLight,
                surfaceTintColor: Colour.greyLight,
                child: ListView.builder(
                  itemCount: 10,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisSize: MainAxisSize.min,
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
                                    child: Image.asset(
                                      'assets/images/image_3.png',
                                      height: 35,
                                      width: 35,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(left: 5),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CommonFun.textMed("Afshin", 12, TextAlign.start, color: Colour.black),
                                        RatingBar.builder(
                                          initialRating: 4,
                                          minRating: 1,
                                          glow: false,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          unratedColor: Colour.starUnselected,
                                          itemPadding: EdgeInsets.zero,
                                          itemCount: 5,
                                          itemSize: 15,
                                          itemBuilder: (context, _) => const Icon(
                                            Icons.star_rate_rounded,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            debugPrint(rating.toString());
                                          },
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              CommonFun.textMed("2 month ago", 12, TextAlign.start, color: Colour.greyText),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CommonFun.textMed(qw, 12, TextAlign.start, color: Colour.greyText),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5, bottom: 5,right: 10,left: 10),
                          child:  Divider(
                            height: 1,
                            color: Colour.divideLine,
                            thickness: 1,
                          ),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
