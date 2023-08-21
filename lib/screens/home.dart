import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/tabbar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              width: 350,
              height: 200,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  color: Color(0xff116D6E),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              child: Text(
                'Vision Plus',
                style: GoogleFonts.archivo(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xffECF8F9)),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color(0xff4E3636),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Text(
              'Welcome To Dart',
              style: GoogleFonts.archivo(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffECF8F9)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 350,
            height: 200,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                color: Color(0xffE86A33),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Text(
              textAlign: TextAlign.center,
              'Welcome To Flutter',
              style: GoogleFonts.archivo(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffECF8F9)),
            ),
          ),
          //const SizedBox(height: 20,),
          // Container(
          //   width: 350,
          //   height: 200,
          //   alignment: Alignment.center,
          //   decoration: const BoxDecoration(
          //       color: Color(0xff116D6E),
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           bottomRight: Radius.circular(30))),
          //   child: Text(
          //     'Vision Plus',
          //     style: GoogleFonts.archivo(
          //         fontSize: 36,
          //         fontWeight: FontWeight.bold,
          //         color: const Color(0xffECF8F9)),
          //   ),
          // ),
          // Container(
          //   width: 350,
          //   height: 200,
          //   alignment: Alignment.center,
          //   decoration: const BoxDecoration(
          //       color: Color(0xff116D6E),
          //       borderRadius: BorderRadius.only(
          //           topLeft: Radius.circular(30),
          //           bottomRight: Radius.circular(30))),
          //   child: Text(
          //     'Lecture 5',
          //     style: GoogleFonts.archivo(
          //         fontSize: 36,
          //         fontWeight: FontWeight.bold,
          //         color: const Color(0xffECF8F9)),
          //   ),
          // ),
          // const SizedBox(height: 20,),
        ],
      ),
    );
  }
}
