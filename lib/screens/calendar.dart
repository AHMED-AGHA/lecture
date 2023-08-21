import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  String date = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calendar Example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(

              date,
              style: GoogleFonts.archivo(
                  fontWeight: FontWeight.bold, fontSize: 22),
            ),
            IconButton(
                onPressed: () async {
                  await _selectDate(context);
                },
                icon: Icon(
                  Icons.date_range,
                  size: 24,
                )),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {}, child: Icon(Icons.safety_check)),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    var results = await showCalendarDatePicker2Dialog(
      dialogBackgroundColor: Colors.white,
      context: context,
      config: CalendarDatePicker2WithActionButtonsConfig(),
      dialogSize: const Size(325, 400),
      initialValue: [DateTime.now()],
      borderRadius: BorderRadius.circular(15),
    );
    if (results != null) {
      if (mounted) {
        setState(() {
          // date = DateFormat.yMd().format(results.first!);//
          date = DateFormat('yyyy-MM-dd').format(results.first!);
        });
      }
    }
  }
}
