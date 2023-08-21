import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFiledWidget1 extends StatefulWidget {
  const TextFiledWidget1({Key? key}) : super(key: key);

  @override
  State<TextFiledWidget1> createState() => _TextFiledWidget1State();
}

class _TextFiledWidget1State extends State<TextFiledWidget1> {
  late TextEditingController textEditingController;
  bool status = false;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TextFiled Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: textEditingController,
            onSubmitted: (value) {
              setState(() {
                textEditingController.text = value;
              });
            },
            decoration: InputDecoration(
              counterText: "",
              // hintText: "Type Here",
              hintStyle: GoogleFonts.poppins(),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    status = !status;
                  });
                },
                icon: status
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
              ),
              labelText: "Type",
              labelStyle:
                  GoogleFonts.archivo(fontSize: 18, color: Colors.redAccent),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.green)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(width: 1, color: Colors.amber)),




            ),

            // onTap: () {
            //   print("Hello World");
            // },
            // onChanged: (value) {
            //   setState(() {
            //     textEditingController.text = value;
            //   });
            // },
            keyboardType: TextInputType.emailAddress,
            obscureText: status,
            maxLength: 8,
            textInputAction: TextInputAction.next,
          ),

          Text(textEditingController.text),

        ],
      ),
    );
  }
}
