import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextFiled extends StatelessWidget {
  const AppTextFiled(
      {Key? key,
      required TextEditingController editingController,
      required String hint,
      IconData? prefixIcon,
      IconData? sufixIcon,
      TextInputType textInputType = TextInputType.text,
      bool obscure = false,
      bool enabled = true,
      int? left = 17,
      int? right = 18,
      int? maxLength,
      TextInputAction textInputAction = TextInputAction.next,
      final void Function(String value)? onSubmitted,
      final void Function(String value)? onChange,
      final void Function()? onPreesed,
      Color? colorHint = Colors.white,
      required Color color_floatingLabelStyle,
      Color? colorBorder = Colors.white})
      : _editingController = editingController,
        _hint = hint,
        _prefixIcon = prefixIcon,
        _sufixIcon = sufixIcon,
        _textInputType = textInputType,
        _obscureText = obscure,
        _left = left,
        _right = right,
        _readonly = enabled,
        _textInputAction = textInputAction,
        _onSubmitted = onSubmitted,
        _onchange = onChange,
        _maxLength = maxLength,
        _onpreesed = onPreesed,
        _colorHint = colorHint,
        _color_floatingLabelStyle = color_floatingLabelStyle,
        _colorBorder = colorBorder,
        super(key: key);

  final TextEditingController _editingController;
  final String _hint;
  final IconData? _prefixIcon;
  final IconData? _sufixIcon;
  final TextInputType _textInputType;
  final bool _obscureText;
  final bool _readonly;
  final int? _maxLength;
  final TextInputAction _textInputAction;
  final void Function(String value)? _onSubmitted;
  final void Function()? _onpreesed;
  final void Function(String value)? _onchange;
  final Color? _colorHint;
  final Color _color_floatingLabelStyle;
  final Color? _colorBorder;
  final int? _left;
  final int? _right;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onTap: () {
        if (_editingController.selection ==
            TextSelection.fromPosition(
                TextPosition(offset: _editingController.text.length - 1))) {
          _editingController.selection = TextSelection.fromPosition(
              TextPosition(offset: _editingController.text.length));
        }
      },
      enabled: _readonly,
      controller: _editingController,
      keyboardType: _textInputType,
      textInputAction: _textInputAction,
      obscureText: _obscureText,
      maxLength: _maxLength,
      style: GoogleFonts.dmSans(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      onSubmitted: _onSubmitted,
      decoration: InputDecoration(
        labelText: _hint,
        contentPadding: EdgeInsets.only(top: 0, bottom: 0, left: 10),
        floatingLabelStyle: TextStyle(
            color: _color_floatingLabelStyle,
            fontSize: 14,
            fontWeight: FontWeight.w500),
        labelStyle: TextStyle(
          fontSize: 13,
          color: _colorHint,
        ),
        counterText: '',
        // hintStyle: GoogleFonts.dmSans(
        //     fontSize: 16.sp,
        //     fontWeight: FontWeight.w500,
        //     color: _colorHint),
        // prefixIcon: Icon(_prefixIcon,
        //     size: 24, color: const Color(0xff1B2A3B).withOpacity(0.4)),
        suffixIcon: IconButton(
          icon: Icon(
            _sufixIcon,
            size: 12,
            color:Colors.red,
          ),
          onPressed: _onpreesed,
        ),

        enabledBorder: buildOutlineInputBorder(color: _colorBorder!),
        focusedBorder: buildOutlineInputBorder(color: _colorBorder!),
      ),
      onChanged: _onchange,
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(width: 1, color: color));
  }
}
