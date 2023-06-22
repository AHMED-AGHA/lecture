import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySwitchToggle extends StatefulWidget {
  @override
  _MySwitchToggleState createState() => _MySwitchToggleState();
}

class _MySwitchToggleState extends State<MySwitchToggle> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch Toggle Example'),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () => selectedItem(),
              title: Text(
                'Language',
                style: GoogleFonts.archivo(
                    fontSize: 18, fontWeight: FontWeight.bold),
              ),
              leading: Switch(
                activeColor: Colors.green,
                inactiveThumbColor: Colors.black87,
                activeTrackColor: Colors.amber,
                inactiveTrackColor: Colors.red,
                value: _isSwitched,
                onChanged: (bool value) => selectedItem(),
              ),
            ),
          )
        ],
      ),
    );
  }
  selectedItem() {
    setState(() {
      _isSwitched = !_isSwitched;
    });
  }
}
