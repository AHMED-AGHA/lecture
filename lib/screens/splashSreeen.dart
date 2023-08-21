import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/prefernces/shared_prefernce_controller.dart';
import 'package:lecture4/screens/loginPage.dart';
import 'package:lecture4/screens/rowAndColumnandTextFiled.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
    );

    // Future.delayed(
    //   const Duration(seconds: 3),
    //   () {
    //     if (SharedPrefController().getloggedIn) {
    //       Navigator.pushReplacement(context,
    //           MaterialPageRoute(builder: (context) => RowsAndColumnsWidget()));
    //     } else {
    //       Navigator.pushReplacement(
    //           context, MaterialPageRoute(builder: (context) => LoginPage()));
    //     }
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blue,
      body: Center(
        child: FlutterLogo(
          size: 200,
        ),
      ),
    );
  }
}
