import 'package:flutter/material.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator(
      {Key? key, required bool isSelected, double marginEnd = 0})
      : _isSelected = isSelected,
        _marginEnd = marginEnd,
        super(key: key);

  final bool _isSelected;
  final double _marginEnd;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: 12,
      margin: EdgeInsetsDirectional.only(end: _marginEnd),
      decoration: BoxDecoration(
           color: _isSelected ? const Color(0xff6A90F2) : const Color(0xffDDDDDD),
          // color: switch (_isSelected) {
          //   true => Colors.green,
          //   false => Colors.redAccent,
          //   _ => Colors.black87
          // },
          borderRadius: BorderRadius.circular(6)),
    );
  }
}
