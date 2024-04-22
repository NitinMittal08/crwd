import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../values/colour.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  bool genderListOpen = false;
  bool countryListOpen = false;

  List<String> genderList = ['Male', 'Female', 'other'];
  List<String> countryList = [];

  String endDate = "0";
  DateTime? pickedDate;

  TextEditingController gender = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController location = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    countryListFun();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colour.whiteApp,
      appBar: AppBar(
        backgroundColor: Colour.whiteApp,
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
              CommonFun.textBold1("Edit Profile", 16, TextAlign.start, color: Colour.black),
            ],
          ),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,

      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                children: <Widget>[

                  const SizedBox(height: 15),
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(color: Colour.pink, width: 3)),
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              'assets/images/image_3.png',
                              height: 60,
                              width: 60,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 3, bottom: 3),
                        child: Image.asset(
                          'assets/images/icon/camera_icon.png',
                          height: 35,
                        ),
                      )
                    ],
                  ),


                  //textField
                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 50),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon:  Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset('assets/images/icon/Profile.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Full Name",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon:  Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset('assets/images/icon/email.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Email",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon:  Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset('assets/images/icon/phone.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Phone Number",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon:  Container(
                            padding: const EdgeInsets.all(12),
                            child: Image.asset('assets/images/icon/calender.png',width: 12,height: 12,fit: BoxFit.fitHeight,color: Colour.greyText,)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Birthday",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                      readOnly: true,
                      onTap: () async {
                        pickedDate = await showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Colour.grey,
                                    onPrimary: Colour.black,
                                    onSurface: Colour.greyText,
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      foregroundColor: Colour.pink, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1950),
                            lastDate: DateTime(2101));

                        if (pickedDate != null) {
                          debugPrint(pickedDate.toString());
                          String formattedDate = DateFormat('MM/dd/yyyy').format(pickedDate!);
                          debugPrint(formattedDate);
                          dob.text = formattedDate.toString();
                          setState(() {});
                        } else {
                          debugPrint("Date is not selected");
                        }
                      },
                    ),
                  ),


                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: gender,
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon: InkWell(
                            onTap: () {
                              genderListOpen = !genderListOpen;
                              setState(() {});
                            },
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset('assets/images/icon/drop_down.png',width: 12,height: 12,fit: BoxFit.fitWidth,color: Colour.greyText)),),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Gender",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                      readOnly: true,
                    ),
                  ),

                  if (genderListOpen)
                    Container(
                      height: 120,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.only( top: 10),
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: genderList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              gender.text = genderList[index].toString();
                              genderListOpen = false;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(child: CommonFun.textMed(genderList[index].toString(), 14, TextAlign.start, color: Colour.black)),
                            ),
                          );
                        },
                      ),
                    ),


                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: country,
                      style: TextStyle(
                        fontSize: 14.0,
                        height: 1.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon: InkWell(
                          onTap: () {
                            countryListOpen = !countryListOpen;
                            setState(() {});
                          },
                          child: Container(
                              padding: const EdgeInsets.all(15),
                              child: Image.asset('assets/images/icon/drop_down.png',width: 12,height: 12,fit: BoxFit.fitWidth,color: Colour.greyText)),),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Select Country",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),
                      readOnly: true,
                    ),
                  ),

                  if (countryListOpen)
                    Container(
                      height: 200,
                      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                      margin: const EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: countryList.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              country.text = countryList[index].toString();
                              countryListOpen = false;
                              setState(() {});
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(child: CommonFun.textMed(countryList[index].toString(), 14, TextAlign.start, color: Colour.black)),
                            ),
                          );
                        },
                      ),
                    ),





                  Container(
                    decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                    margin: const EdgeInsets.only(top: 15),
                    child: TextField(
                      controller: location,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontFamily: "poppins_Reg",
                        color: Colour.black,
                      ),
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                        suffixIcon:  Container(
                            padding: const EdgeInsets.all(13),
                            child: Image.asset('assets/images/icon/location_1.png',width: 12,height: 12,fit: BoxFit.fitHeight,color: Colour.greyText,)),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                        hintText: "Location",
                        labelStyle: const TextStyle(color: Colors.pink),
                      ),

                    ),
                  ),



                  Expanded(child: Container(color: Colors.transparent)),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only( top: 100,bottom: 20),
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
                          child: CommonFun.textBold1("Save", 16, TextAlign.center, color: Colour.white),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    ));
  }

  void countryListFun() {
    countryList = [
      "United States",
      "China",
      "Japan",
      "Germany",
      "India",
      "United Kingdom",
      "France",
      "Brazil",
      "Italy",
      "Canada",
      "Russia",
      "South Korea",
      "Australia",
      "Spain",
      "Mexico",
      "Indonesia",
      "Netherlands",
      "Saudi Arabia",
      "Switzerland",
      "Turkey"
    ];
  }
}
