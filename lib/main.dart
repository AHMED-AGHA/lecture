import 'package:flutter/material.dart';
import 'package:lecture4/screens/chips.dart';
import 'package:lecture4/screens/gridview.dart';
import 'package:lecture4/screens/home.dart';
import 'package:lecture4/screens/lists.dart';
import 'package:lecture4/screens/listtile.dart';
import 'package:lecture4/screens/listview.dart';
import 'package:lecture4/screens/onBoarding2.dart';
import 'package:lecture4/screens/rowAndColumnandTextFiled.dart';
import 'package:lecture4/screens/login.dart';

import 'screens/calendar.dart';
import 'screens/checkbox.dart';
import 'screens/dropdownbutton.dart';
import 'screens/onboarding.dart';
import 'screens/progressindicator.dart';
import 'screens/radiobuttons.dart';
import 'screens/switchToggele.dart';
import 'screens/verification.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text('Show SnackBar'),
      //   ),
      //   body: ElevatedButton(
      //     onPressed: () {
      //       ScaffoldMessenger.of(context)
      //           .showSnackBar(const SnackBar(content: Text('Hello World!')));
      //     },
      //     child: const Text('Press Here'),
      //   ),
      // ),
      home: VerificationScreen(),
      // initialRoute: "/ListViewsTwo",
      routes: {
        "/Home_screen": (context) => const Home(),
        "/login_screen": (context) => const Login(),
        "/ListView_screen": (context) => const ListViews(),
        "/ListViewsTwo": (context) => const ListViewsTwo(),
        "/GridView": (context) => GridViews(),
        "/ListTile": (context) => const ListTileWidget()
      },
    );
  }
}
