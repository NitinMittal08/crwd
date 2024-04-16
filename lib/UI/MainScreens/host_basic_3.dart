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
            appBar: AppBar(
              backgroundColor: Colour.bgColor,
              title: CommonFun.textBold("Host Event", 16, TextAlign.start, color: Colour.black),
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
                      Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.all(15),
                          child: CommonFun.textBold("Event Date and Time ", 18, TextAlign.start, color: Colour.black)),
                      Container(
                        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                        margin: const EdgeInsets.only(left: 15, right: 15,top: 15),
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
                            border: const OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                            labelText: "Event Date",
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
                          controller: _timeController,
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
                              Icons.access_time,
                              color: Colour.grey,
                            ),
                            border: const OutlineInputBorder(borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(borderSide: BorderSide.none),
                            labelText: "Event Time",
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
                        margin: const EdgeInsets.only(right: 20, left: 20, bottom: 20),
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
                              child: CommonFun.textBold("Next", 16, TextAlign.center, color: Colour.white),
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
