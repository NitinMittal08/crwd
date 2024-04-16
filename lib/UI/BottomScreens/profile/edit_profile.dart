import 'package:crwd/values/commonFun.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../values/colour.dart';
import '../../MainScreens/host_basic_1.dart';

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
      appBar: AppBar(
        backgroundColor: Colour.bgColor,
        title: CommonFun.textBold("Edit Profile", 16, TextAlign.start, color: Colour.black),
        leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: <Widget>[

                const SizedBox(height: 15),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: const EdgeInsets.all(5),
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
                        'assets/images/edit.png',
                        height: 35,
                      ),
                    )
                  ],
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 35),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colour.grey,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Full Name",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(
                        Icons.email_outlined,
                        color: Colour.grey,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Email",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(
                        Icons.phone,
                        color: Colour.grey,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Phone Number",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    controller: dob,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 1.0,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(
                        Icons.calendar_month,
                        color: Colour.grey,
                      ),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Birthday",
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
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    controller: gender,
                    readOnly: true,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: RotatedBox(
                          quarterTurns: 3,
                          child: InkWell(
                              onTap: () {
                                genderListOpen = !genderListOpen;
                                setState(() {});
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colour.grey,
                                size: 15,
                              ))),
                      hintText: "Gender",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                if (genderListOpen)
                  Container(
                    height: 100,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: ListView.builder(
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
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    readOnly: true,
                    controller: gender,
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    scrollPadding: const EdgeInsets.only(bottom: 80),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: RotatedBox(
                          quarterTurns: 3,
                          child: InkWell(
                              onTap: () {
                                countryListOpen = !countryListOpen;

                                setState(() {});
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colour.grey,
                                size: 15,
                              ))),
                      hintText: "Select Country",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
                if (countryListOpen)
                  Container(
                    height: 200,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: countryList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            gender.text = countryList[index].toString();
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
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.only(left: 15, right: 15, top: 15),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 14.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(Icons.not_listed_location_sharp, color: Colour.grey),
                      hintText: "Location",
                      labelStyle: const TextStyle(color: Colors.pink),
                    ),
                  ),
                ),



                Expanded(child: Container(color: Colors.transparent)),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 20, left: 20, top: 100,bottom: 20),
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
                        child: CommonFun.textBold("Save", 16, TextAlign.center, color: Colour.white),
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
