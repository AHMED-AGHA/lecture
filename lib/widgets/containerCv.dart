import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContainerForCv extends StatelessWidget {
  ContainerForCv({
    required this.textValue,
    required this.iconData,
    this.inKwell,
    super.key,
  });

  String textValue;
  IconData iconData;
 Function()? inKwell;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: inKwell,
        child: InkWell(
          onTap: (){

          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            width: 200,
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Icon(
                  iconData,
                  size: 70,
                  color: Color(0xff850E35),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  textValue,
                  style: GoogleFonts.poppins(
                      color: Color(0xff850E35),
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
