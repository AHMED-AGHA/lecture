import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecture4/model/choice.dart';
import 'package:lecture4/model/card.dart';

class GridViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffCDC2AE),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Grid View Widget',style: GoogleFonts.archivo(
              fontWeight: FontWeight.bold,
              color: Color(0xff116A7B),
              fontSize: 42
            ),),
            const SizedBox(height: 50,),
            SizedBox(
              height: 250,
              child: GridView.count(
                  //shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                 scrollDirection: Axis.horizontal,
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 8.0,
                  children: List.generate(choices.length, (index){
                    return SelectCard(choice: choices[index]);
                  })
                  )),

            const SizedBox(height: 20,),
            SizedBox(
              height: 220,
              child: GridView.builder(
                physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: choices.length,
                  itemBuilder: (context, index) {
                    return SelectCard(choice: choices[index]);
                  },
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 8.0,
                  )),
            )
          ],
        ));
  }
}

class SelectCard extends StatelessWidget {
  const SelectCard({required this.choice, Key? key}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff116A7B),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            Icon(choice.icon, size: 30.0, color: Colors.white),
            SizedBox(
              height: 10,
            ),
            Text(choice.title,
                style: GoogleFonts.archivo(
                    color: Colors.white,

                    fontWeight: FontWeight.bold,
                    fontSize: 12)),
            Spacer(),
          ]),
    );
  }
}
