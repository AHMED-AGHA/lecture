import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/prefernces/shared_prefernce_controller.dart';
import 'package:lecture4/widgets/containerCv.dart';

class RowsAndColumnsWidget extends StatefulWidget {
  RowsAndColumnsWidget({Key? key}) : super(key: key);

  @override
  State<RowsAndColumnsWidget> createState() => _RowsAndColumnsWidgetState();
}

class _RowsAndColumnsWidgetState extends State<RowsAndColumnsWidget> {
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
    return Scaffold(
        backgroundColor: const Color(0xffF2EE9D),
        appBar: AppBar(
          leading: IconButton(
              onPressed: () async {
                await SharedPrefController().logOut();
              },
              icon: Icon(Icons.logout)),
          title: InkWell(
            onTap: () {
              print("Vision");
            },
            child: Text(
              'Curriculum Vitae',
              style: GoogleFonts.archivo(
                  fontWeight: FontWeight.w600, fontSize: 18),
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Color(0xff181818),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Choose what is required',
                style:
                    TextStyle(fontFamily: "Archivo", color: Colors.blueAccent),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  ContainerForCv(
                      textValue: 'PERSONAL INFO',
                      iconData: Icons.person,
                      inKwell: () {
                        print("PERSONAL INFO");
                      }),
                  const SizedBox(
                    width: 20,
                  ),
                  ContainerForCv(
                      textValue: "Vision Plus", iconData: Icons.comment),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  ContainerForCv(
                      textValue: "Vision Plus", iconData: Icons.comment),
                  const SizedBox(
                    width: 20,
                  ),
                  ContainerForCv(textValue: "Vision Plus", iconData: Icons.add),
                ],
              ),
            ],
          ),
        ));
  }

  OutlineInputBorder outlineInputBorder({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(width: 2, color: color));
  }
}
