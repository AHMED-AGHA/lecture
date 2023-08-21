import 'package:flutter/material.dart';
import 'package:lecture4/screens/home.dart';
import 'package:lecture4/screens/polymerphism.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({Key? key}) : super(key: key);

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Card"),
        ),
        body: Card(
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed Agha"),
            subtitle: Text("ahmed.m.j.agha@hotmail.com"),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          ),
        ),
    );
  }
}
