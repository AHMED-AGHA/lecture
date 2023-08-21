import 'package:flutter/material.dart';
var number = 1;
class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.black,
        title: Text(number.toString()),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.save),
            onPressed: () {
              print("AppBar");
            }),
        elevation: 0,
        actions: [
          IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {
                setState(() {
                  number = number +1;

                });
              }),
        ],
      ),
    );
  }
}
