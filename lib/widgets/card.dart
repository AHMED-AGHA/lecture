import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/choice.dart';

class SelectCard extends StatelessWidget {
  const SelectCard({required this.choice, Key? key}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff116A7B),
      child: Column(children: <Widget>[
        Spacer(),
        Icon(choice.icon, size: 30.0, color: Colors.white),
        SizedBox(
          height: 10,
        ),
        Text(choice.title,
            style: GoogleFonts.archivo(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 12)),
        Spacer(),
      ]),
    );
  }
}
