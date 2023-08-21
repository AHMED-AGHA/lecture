import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Bottomsheets extends StatefulWidget {
  const Bottomsheets({Key? key}) : super(key: key);

  @override
  State<Bottomsheets> createState() => _BottomsheetsState();
}

class _BottomsheetsState extends State<Bottomsheets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              _bottomSheet();
            },
            child: Text("Press Here")),
      ),
    );
  }

  void _bottomSheet() async {
    showModalBottomSheet(
        context: context,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(30), topEnd: Radius.circular(30))),
        builder: (context) {
          return StatefulBuilder(builder: (context, setState) {
            return BottomSheet(
                enableDrag: false,
                onClosing: () {},
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    height: 350,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(Icons.clear)),
                            const Spacer(),
                            Text(
                              "Profile Language",
                              style: GoogleFonts.cairo(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 60,
                            ),
                            const Spacer(),
                          ],
                        ),
                        const Divider(),
                        const Spacer(),
                        Align(
                          alignment: AlignmentDirectional.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/englishlanguage.png',
                                  width: 130,
                                  height: 93,
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/arabiclanguage.png',
                                  width: 130,
                                  height: 93,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                      ],
                    ),
                  );
                });
          });
        });
  }
}
