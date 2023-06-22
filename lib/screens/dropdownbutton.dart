import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/chips.dart';

class MyDropdownButton extends StatefulWidget {
  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String? selectedValue;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DropdownButton Example'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: DropdownButton(
            isExpanded: false,
            menuMaxHeight: 300,
            value: selectedValue,
            hint: const Text('Choose Your Course'),
            elevation: 4,
            style: GoogleFonts.cairo(
                color: const Color(0xff04b8673), fontWeight: FontWeight.bold),
            borderRadius: BorderRadius.circular(10),
            items: textForChip.map((group) {
              return DropdownMenuItem(
                  value: group,
                  child: Text(group),
                  onTap: () {
                    selectedValue = group;
                  });
            }).toList(),
            onChanged: (String? value) {
              setState(() {
                selectedValue = value;
              });
            }),
      ),
    );
  }
}

