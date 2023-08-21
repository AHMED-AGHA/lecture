import 'package:flutter/material.dart';

class Cloumnsss extends StatefulWidget {
  const Cloumnsss({Key? key}) : super(key: key);

  @override
  State<Cloumnsss> createState() => _CloumnsssState();
}

class _CloumnsssState extends State<Cloumnsss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text("AppBar"),
      ),
      body:  Column(
        children: [
          Text("Column"),
          Text("Column"),
          Text("Column"),
          Text("Columjhsdiuvnn"),
        ],
      ),
    );
  }
}
