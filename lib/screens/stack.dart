import 'package:flutter/material.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({Key? key}) : super(key: key);

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Stack"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Widget at the bottom
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            // Widget on top
            Container(
              width: 150,
              height: 150,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ],
        ),
      ),
    );
  }
}
