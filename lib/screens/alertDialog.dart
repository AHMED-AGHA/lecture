import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/screens/elevatebbutton.dart';

class AlertDialogShow extends StatefulWidget {
  AlertDialogShow({ Key? key}) : super(key: key);


  @override
  State<AlertDialogShow> createState() => _AlertDialogShowState();
}

class _AlertDialogShowState extends State<AlertDialogShow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            _showDialog(context: context);
          },
          child: Text('Press Me'),
        ),
      ),
    );
  }
}

void _showDialog({required BuildContext context}) {
  showDialog(
      context: context,
      builder: (context) => Dialog(
            // backgroundColor: Colors.black87,
              clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            child: Container(
              color: Colors.white,
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Are you sure you want to delete this item?',
                    style: GoogleFonts.archivo(
                        color: Colors.black87,
                        fontSize: 12,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            minimumSize: Size(100, 40)),
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) =>
                          //             ElevatedButtonsWidget()));
                        },
                        child: Text('Yes',
                            style: GoogleFonts.archivo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            minimumSize: const Size(100, 40)),
                        onPressed: () {
                          Navigator.pop(context);
                          print('No');
                        },
                        child: Text('No',
                            style: GoogleFonts.archivo(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ));
}
