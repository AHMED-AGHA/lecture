import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTileWidget extends StatefulWidget {
  const ListTileWidget({Key? key}) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ExpansionTile(
              leading: const Icon(
                Icons.question_answer,
                color: Color(0xff586BCA),
              ),
              backgroundColor: Colors.white,
              collapsedIconColor: const Color(0xff586BCA), // closed
              iconColor: const Color(0xff586BCA),//open
             collapsedBackgroundColor: const Color(0xff8FA1B4),
              collapsedTextColor: Colors.white,
              title: Text(
                'Question #1',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 24),
              ),
              expandedAlignment: Alignment.topLeft,
              childrenPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textColor: Colors.black,
              //initiallyExpanded: true,
              children: [
                Text('Answer #1',
                    style: GoogleFonts.cairo(fontWeight: FontWeight.w400))
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ExpansionTile(
              leading: const Icon(
                Icons.question_answer,
                color: Color(0xff586BCA),
              ),
              backgroundColor: Colors.white,
              collapsedIconColor: const Color(0xff586BCA),
              iconColor: const Color(0xff586BCA),
              collapsedBackgroundColor: const Color(0xff8FA1B4),
              collapsedTextColor: Colors.white,
              title: Text(
                'What is Tile Expansion in Flutter ?',
                style: GoogleFonts.cairo(
                    fontWeight: FontWeight.bold, fontSize: 18),
              ),
              expandedAlignment: Alignment.topLeft,
              childrenPadding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              textColor: Colors.red,
               initiallyExpanded: true,
              children: [
                Text(
                    'An expansion tile in flutter is almost similar to the ListTile which you may have already used in list view but the only difference is that the user can expand or collapse the tile to view more details about the tile. You can see the example of an expansion tile in the above image.',
                    style: GoogleFonts.cairo(fontWeight: FontWeight.w600,fontSize: 14))
              ],
            ),
          ),

        ],
      ),
    );
  }
}
