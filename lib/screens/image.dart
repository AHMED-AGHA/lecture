import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  State<ImageWidget> createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: Column(
        children: [
          Image.asset("assets/images/englishlanguage.png"),
          Container(
            width: 200,
            height: 120,
            child: Image.network(
              "https://w7.pngwing.com/pngs/730/380/png-transparent-football-ball-game-football-white-sport-sports-equipment.png",
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
