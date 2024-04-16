
import 'package:crwd/UI/signup/create_profile/upload_images.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../values/colour.dart';
import '../../../values/commonFun.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({Key? key}) : super(key: key);

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {

  bool genderListOpen =false;
  List<String> genderList =['Male','Female','other'];

  String endDate = "0";
  DateTime? pickedDate;

  TextEditingController gender =TextEditingController();
  TextEditingController dob =TextEditingController();

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
                CommonFun.textBold("Personal Information", 16, TextAlign.start, color: Colour.black),
                CommonFun.textMed("Please enter your details below", 12, TextAlign.start, color: Colour.greyText),

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration:   InputDecoration(
                      border: InputBorder.none,
                      fillColor:Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(Icons.person,color: Colour.grey,),
                      hintText: "Full Name",
                      labelStyle: TextStyle(
                          color: Colors.pink
                      ),),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    controller: dob,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 1.0,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.emailAddress, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon:  Icon(Icons.calendar_month,color: Colour.grey,),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.pink, width: 2.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),

                      labelText: "Birthday",
                      labelStyle: const TextStyle(
                          color: Colors.pink
                      ),
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
                                textButtonTheme:
                                TextButtonThemeData(
                                  style: TextButton.styleFrom(
                                    foregroundColor:Colour.pink, // button text color
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
                        dob.text =formattedDate.toString();
                        setState(() { });
                      } else {
                        debugPrint("Date is not selected");
                      }
                    },
                  ),
                ),





                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    controller: gender,
                    readOnly: true,
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    decoration:   InputDecoration(
                      border: InputBorder.none,
                      fillColor:Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: RotatedBox(
                          quarterTurns: 3,
                          child: InkWell(
                              onTap: () {
                                genderListOpen =!genderListOpen;
                                setState(() { });
                              },
                              child: Icon(Icons.arrow_back_ios,color: Colour.grey,))),
                      hintText: "Gender",
                      labelStyle: const TextStyle(
                          color: Colors.pink
                      ),
                    ),
                  ),
                ),

                if(genderListOpen)
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 10),
                  child:  ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: genderList.length,itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        gender.text = genderList[index].toString();
                        genderListOpen=false;
                        setState(() { });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                                child: CommonFun.textMed(genderList[index].toString(), 14, TextAlign.start, color: Colour.black)),
                      ),
                    );
                  },),
                ),




                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.only(left: 15,right: 15,top: 35),
                  child: TextField(
                    style: TextStyle(
                      fontSize: 16.0,
                      height: 2.3,
                      fontFamily: "poppins_Reg",
                      color: Colour.black,
                    ),
                    keyboardType: TextInputType.visiblePassword, //Set keyboard type for email address. This will show @ button on the primary section of the keyboard.
                    decoration:   InputDecoration(
                      border: InputBorder.none,
                      fillColor:Colors.white,
                      contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                      suffixIcon: Icon(Icons.newspaper_outlined,color: Colour.grey,),
                      hintText: "Government Id",
                      labelStyle: TextStyle(
                          color: Colors.pink
                      ),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const UploadImages()));
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
