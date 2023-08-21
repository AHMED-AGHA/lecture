import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonsWidget extends StatefulWidget {
  const ElevatedButtonsWidget({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonsWidget> createState() => _ElevatedButtonsWidgetState();
}

class _ElevatedButtonsWidgetState extends State<ElevatedButtonsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Elevated Button"),
        elevation: 0,
      ),
      body: ElevatedButton(
          onPressed: () {
            print("Hello World");
          },
          style: ElevatedButton.styleFrom(


              backgroundColor: Colors.redAccent,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                // side: BorderSide(
                //   // color: Colors.black87,
                //   // width: 2,
                // )
              )),
          child: const Text("REGISTERATION")),
    );
  }
}
