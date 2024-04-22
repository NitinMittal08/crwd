
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
          elevation: 0,
          automaticallyImplyLeading: false,
          title: SizedBox(
            width: MediaQuery.of(context).size.width/1.7,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
                CommonFun.indicators(4),
              ],
            ),
          ),

        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Container(
                margin: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    CommonFun.textBold1("Personal Information", 16, TextAlign.start, color: Colour.black),
                    CommonFun.textMed("Please enter your details below", 12, TextAlign.start, color: Colour.greyText),

                    //textField
                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 50),
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
                      margin: const EdgeInsets.only( top: 15),
                      child: TextField(
                        controller: dob,
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
                              child: Image.asset('assets/images/icon/calender.png',width: 15,height: 15,fit: BoxFit.fitWidth)),
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
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 15),
                      child: TextField(
                        controller: gender,
                        readOnly: true,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: "poppins_Reg",
                          color: Colour.black,
                        ),
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 1.8, horizontal: 8.0),
                          suffixIcon:  InkWell(
                            onTap: () {
                              genderListOpen =!genderListOpen;
                              setState(() { });
                            },
                            child: Container(
                                padding: const EdgeInsets.all(15),
                                child: Image.asset('assets/images/icon/drop_down.png',width: 12,height: 12,fit: BoxFit.fitWidth)),
                          ),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Gender",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),

                    if(genderListOpen)
                      Container(
                        height: 120,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)
                        ),
                        margin: const EdgeInsets.only(top: 10),
                        child:  ListView.builder(
                          physics: const BouncingScrollPhysics(),
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


                    //textField
                    Container(
                      decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                      margin: const EdgeInsets.only( top: 15),
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
                              child: Image.asset('assets/images/icon/gov_id.png',width: 12,height: 12,fit: BoxFit.fitWidth)),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                          hintText: "Government Id",
                          labelStyle: const TextStyle(color: Colors.pink),
                        ),
                      ),
                    ),

                    Expanded(child: Container(color: Colors.transparent)),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(10),
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
                            child: CommonFun.textBold1("Continue", 16, TextAlign.center,
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
            ),
          ],
        )),
    ));
  }


}
