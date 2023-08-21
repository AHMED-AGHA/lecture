import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnsWidget extends StatelessWidget {
  ColumnsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Columns"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
        foregroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Vision Plus"),
            SizedBox(
              width: 20,
            ),
            Text("Vision Plus"),
          ],
        ),
      ),
    );
  }
}
