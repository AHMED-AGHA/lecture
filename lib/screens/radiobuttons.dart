import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRadioButtons extends StatefulWidget {
  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  String? _selectedOption;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Example'),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              onTap: () {
                onItemClicked('Male');
                // setState(() {
                //   _selectedOption = 'Male';
                // });
              },
              title: Text(
                'Male',
                style: GoogleFonts.archivo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Radio(
                  value: 'Male',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    setState(() {
                      print(value);
                      _selectedOption = value;
                    });
                  }),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                onItemClicked('Female');
              },
              title: Text(
                'Female',
                style: GoogleFonts.archivo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Radio(
                value: 'Female',
                groupValue: _selectedOption,
                onChanged: (String? value) => onItemClicked(value),
              ),
            ),
          ),
        ],
      ),
    );
  }

  onItemClicked(String? value) {
    setState(() {
      _selectedOption = value!;
    });
  }
}
