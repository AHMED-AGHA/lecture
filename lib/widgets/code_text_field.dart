import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CodeTextField extends StatelessWidget {
  const CodeTextField({
    required this.controllertext,
    required this.focusNode,
    required this.onChanged,
    required this.onSubmitted,
    Key? key,
  }) : super(key: key);
  final TextEditingController controllertext;
  final FocusNode focusNode;
  final void Function(String value) onChanged;
  final void Function(String value) onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controllertext,
        focusNode: focusNode,
        keyboardType: TextInputType.number,
        maxLength: 1,
        style: GoogleFonts.cairo(fontSize: 16),
        textInputAction: TextInputAction.done,
        onChanged: onChanged,
        onSubmitted: onSubmitted,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
            counterText: '',
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1, color: Colors.grey))),
      ),
    );
  }
}
