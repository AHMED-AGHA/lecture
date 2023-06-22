import 'package:flutter/material.dart';
import 'package:lecture4/model/chips.dart';

class ChipsWidget extends StatefulWidget {
  const ChipsWidget({Key? key}) : super(key: key);

  @override
  State<ChipsWidget> createState() => _ChipsWidgetState();
}

class _ChipsWidgetState extends State<ChipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chips'),
      ),
      body: SizedBox(
        height: 80,
        child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            itemCount: textForChip.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Chip(
                  backgroundColor: const Color(0xff4D97AE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  label: Text(textForChip[index]),
                  avatar: const Icon(Icons.biotech),
                  onDeleted: () {
                    setState(() {
                      textForChip.removeAt(index);
                    });
                  },
                ),
              );
            }),
      ),
    );
  }
}
