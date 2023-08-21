import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFiledWidget extends StatefulWidget {
  const TextFiledWidget({Key? key}) : super(key: key);

  @override
  State<TextFiledWidget> createState() => _TextFiledWidgetState();
}

class _TextFiledWidgetState extends State<TextFiledWidget> {
  late TextEditingController _controller;
  bool enabled = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _controller,
            keyboardType: TextInputType.number,
            maxLength: 8,
            obscureText: enabled,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      enabled = !enabled;
                    });
                  },
                  icon: enabled == true
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility)),
              counterText: "",
              //labelText: "Type Here",
              hintText: "Type Here",
              labelStyle:
                  GoogleFonts.archivo(fontSize: 18, color: Colors.redAccent),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.redAccent)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.amber)),
            ),
          ),
        ],
      ),
    );
  }
}
