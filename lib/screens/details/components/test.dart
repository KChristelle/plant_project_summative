// this package is for importing calendar date and time selector
import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class DateTimePicker extends StatefulWidget {
  @override
  _DateTimePickerState createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // // logo
            // Container(
            //   width: 85,
            //   height: 85,
            //   child: Image.asset(
            //     "assets/plants-logo.jpg",
            //     fit: BoxFit.contain,
            //   ),
            // ),
            // const SizedBox(height: 20),
            // const Text('Setting Time for your Reminders'),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20.0),
            //   child: Text('DateTimeField'),
            // ),
            // DateTimeField(
            //     decoration: const InputDecoration(
            //         hintText: 'Please select your birthday date and time'),
            //     selectedDate: selectedDate,
            //     onDateSelected: (DateTime value) {
            //       setState(() {
            //         selectedDate = value;
            //       });
            //     }),
            // const Padding(
            //   padding: EdgeInsets.symmetric(vertical: 20.0),
            //   child: Text('DateTimeFormField'),
            // ),
            Form(
              child: Column(
                children: [
                  // DateTimeFormField(
                  //   decoration: const InputDecoration(
                  //     hintStyle: TextStyle(color: Colors.black45),
                  //     errorStyle: TextStyle(color: Colors.redAccent),
                  //     border: OutlineInputBorder(),
                  //     suffixIcon: Icon(Icons.event_note),
                  //     labelText: 'My Super Date Time Field',
                  //   ),
                  //   autovalidateMode: AutovalidateMode.always,
                  //   validator: (e) =>
                  //       (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                  //   onDateSelected: (DateTime value) {
                  //     print(value);
                  //   },
                  // ),
                  // const SizedBox(height: 50),
                  DateTimeFormField(
                    // decoration: const InputDecoration(
                    //   hintStyle: TextStyle(color: Colors.black45),
                    //   errorStyle: TextStyle(color: Colors.redAccent),
                    //   border: OutlineInputBorder(),
                    //   suffixIcon: Icon(Icons.event_note),
                    //   labelText: 'Only time',
                    // ),
                    mode: DateTimeFieldPickerMode.time,
                    autovalidateMode: AutovalidateMode.always,
                    validator: (e) =>
                        (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                    onDateSelected: (DateTime value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
