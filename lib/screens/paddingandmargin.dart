import 'package:flutter/material.dart';

class PaddingAndMargin extends StatelessWidget {
  const PaddingAndMargin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Padding And Margin"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: const Text(
              'Hello World',
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8.0),
                color: Colors.blue,
                width: 100.0,
                height: 100.0,
              ),
              Container(
                color: Colors.red,
                width: 100.0,
                height: 100.0,
              ),
            ],
          )
        ],
      ),
    );
  }
}
