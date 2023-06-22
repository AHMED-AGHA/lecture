import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ProgressIndicators extends StatefulWidget {
  const ProgressIndicators({Key? key}) : super(key: key);

  @override
  State<ProgressIndicators> createState() => _ProgressIndicatorsState();
}

class _ProgressIndicatorsState extends State<ProgressIndicators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // CircularProgressIndicator(
            //   color: Colors.green,
            //   strokeWidth: 1,
            // ),
            LoadingAnimationWidget.fourRotatingDots(color: Colors.deepOrangeAccent, size: 80)
          ],

        ),
      ),
    );
  }
}
