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
      width: 18,
      height: 4,
      margin: EdgeInsetsDirectional.only(end: _marginEnd),
      decoration: BoxDecoration(
          color: _isSelected ? Color(0xff6A90F2) : Color(0xffDDDDDD),
          borderRadius: BorderRadius.circular(2)),
    );
  }
}
