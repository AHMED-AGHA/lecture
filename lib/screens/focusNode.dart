import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/prefernces/shared_prefernce_controller.dart';
import 'package:lecture4/widgets/app_text_field.dart';
import 'package:lecture4/widgets/code_text_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  State<VerificationScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<VerificationScreen> {
  int counter = 1;
  late TextEditingController _firstCodeTextController;
  late TextEditingController _secondCodeTextController;
  late TextEditingController _thirdCodeTextController;
  late TextEditingController _fourthCodeTextController;

  late FocusNode _firstFocusNode;
  late FocusNode _secondFocusNode;
  late FocusNode _thirdFocusNode;
  late FocusNode _fourthFocusNode;

  @override
  void initState() {
    super.initState();
    _firstCodeTextController = TextEditingController();
    _secondCodeTextController = TextEditingController();
    _thirdCodeTextController = TextEditingController();
    _fourthCodeTextController = TextEditingController();
    _firstFocusNode = FocusNode();
    _secondFocusNode = FocusNode();
    _thirdFocusNode = FocusNode();
    _fourthFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _firstCodeTextController.dispose();
    _secondCodeTextController.dispose();
    _thirdCodeTextController.dispose();
    _fourthCodeTextController.dispose();
    _firstFocusNode.dispose();
    _secondFocusNode.dispose();
    _thirdFocusNode.dispose();
    _fourthFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Verification',
          style: GoogleFonts.cairo(fontWeight: FontWeight.w500, fontSize: 18),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CodeTextField(
                  controllertext: _firstCodeTextController,
                  focusNode: _firstFocusNode,
                  onChanged: (String value) {
                    if (value.isNotEmpty) {
                      _secondFocusNode.requestFocus();
                    }
                  },
                  onSubmitted: (String value) {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CodeTextField(
                  controllertext: _secondCodeTextController,
                  focusNode: _secondFocusNode,
                  onChanged: (String value) {
                    value.isNotEmpty
                        ? _thirdFocusNode.requestFocus()
                        : _firstFocusNode.requestFocus();
                  },
                  onSubmitted: (String value) {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CodeTextField(
                  controllertext: _thirdCodeTextController,
                  focusNode: _thirdFocusNode,
                  onChanged: (String value) {
                    value.isNotEmpty
                        ? _fourthFocusNode.requestFocus()
                        : _secondFocusNode.requestFocus();
                  },
                  onSubmitted: (String value) {},
                ),
                const SizedBox(
                  width: 10,
                ),
                CodeTextField(
                  controllertext: _fourthCodeTextController,
                  focusNode: _fourthFocusNode,
                  onChanged: (String value) {
                    if (value.isEmpty) {
                      _thirdFocusNode.requestFocus();
                    }
                  },
                  onSubmitted: (String value) {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff586BCA),
                  elevation: 0,
                  shadowColor: Colors.transparent.withOpacity(0.2),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )),
              onPressed: () {},
              child: Text(
                'Verification',
                style: GoogleFonts.cairo(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              counter.toString(),
              style: GoogleFonts.archivo(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
