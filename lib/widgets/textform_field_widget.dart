import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    Key? key,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.onChanged,
    this.inputFormatters,
    this.cursorColor,
    this.hintText,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.height,
    this.suffix,
  }) : super(key: key);

  final String? hintText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? cursorColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final double? height;
  final String? suffix;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      cursorColor: cursorColor ?? Theme.of(context).shadowColor,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: GoogleFonts.kumbhSans(
        fontWeight: fontWeight,
        color: color ?? Theme.of(context).shadowColor,
        fontSize: fontSize,
        height: height,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        hintStyle: GoogleFonts.kumbhSans(
          fontWeight: fontWeight,
          color: color ?? Theme.of(context).hintColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
