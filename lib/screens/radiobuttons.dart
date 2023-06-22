import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRadioButtons extends StatefulWidget {
  @override
  _MyRadioButtonsState createState() => _MyRadioButtonsState();
}

class _MyRadioButtonsState extends State<MyRadioButtons> {
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio Buttons Example'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            child: ListTile(
              onTap: () {
                setState(() {
                  _selectedOption = 'Male';
                });
              },
              title: Text(
                'Male',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              leading: Radio(
                  value: 'Male',
                  groupValue: _selectedOption,
                  onChanged: (String? value) {
                    onItemClicked(value);

                  }),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                setState(() {
                  _selectedOption = 'Female';
                });
              },
              title: Text(
                'Female',
                style: GoogleFonts.cairo(
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
