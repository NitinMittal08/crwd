import 'package:crwd/UI/MainScreens/host_basic_4.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../values/colour.dart';
import '../../values/commonFun.dart';

class HostBasicThree extends StatefulWidget {
  const HostBasicThree({super.key});

  @override
  State<HostBasicThree> createState() => _HostBasicThreeState();
}

class _HostBasicThreeState extends State<HostBasicThree> {
  TextEditingController dob = TextEditingController();
  DateTime? pickedDate;

  late String _hour, _minute, _time;

  late String dateTime;

  DateTime selectedDate = DateTime.now();

  TimeOfDay selectedTime = const TimeOfDay(hour: 00, minute: 00);

  final TextEditingController _timeController = TextEditingController();

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
                width: MediaQuery.of(context).size.width/1.7,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Image.asset('assets/images/icon/back_icon.png',width: 16,height: 10 ,fit: BoxFit.fill,)),
                    const SizedBox(width: 10),
                    CommonFun.textBold1('Host Event', 16, TextAlign.center, color: Colour.black),
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
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        CommonFun.textBold1("Event Date and Time ", 18, TextAlign.start, color: Colour.black),


                        //textField
                        Container(
                          decoration: BoxDecoration(color: Colour.white, borderRadius: BorderRadiusDirectional.circular(10)),
                          margin: const EdgeInsets.only( top: 50),
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
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset('assets/images/icon/event_date.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Event Date",
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

//textField
                        Container(
                          decoration: BoxDecoration(color: Colour.white , borderRadius: BorderRadiusDirectional.circular(10)),
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
                                  padding: const EdgeInsets.all(15),
                                  child: Image.asset('assets/images/icon/time.png',width: 12,height: 12,fit: BoxFit.fitHeight)),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide.none),
                              hintText: "Event Time",
                              labelStyle: const TextStyle(color: Colors.pink),
                            ),
                            readOnly: true,
                            onTap: () async {
                              _selectTime(context);
                            },
                          ),
                        ),


                        Expanded(child: Container(color: Colors.transparent)),
                        Container(
                          alignment: Alignment.center,
                          margin: const EdgeInsets.only( bottom: 10),
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
                                child: CommonFun.textBold1("Next", 16, TextAlign.center, color: Colour.white),
                              ),
                            ),
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HostBasicFour()));
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;
        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = '$_hour : $_minute';
        _timeController.text = _time;
        _timeController.text = formatDate(DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute), [hh, ':', nn, " ", am]).toString();
      });
    }
  }
}
