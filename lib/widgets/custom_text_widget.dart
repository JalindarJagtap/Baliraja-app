import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
     this.context,
    super.key,
    this.data,
    this.fontWeight,
    this.color,
    this.fontSize, required String hintText,
  });

  final BuildContext? context;
  final String? data;
  final FontWeight? fontWeight;
  final Color? color;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      data ?? "",
      style: GoogleFonts.kumbhSans(
        fontWeight: fontWeight ?? FontWeight.bold,
        color: color ?? Theme.of(context).primaryColor,
        fontSize: fontSize,
      ),
    );
  }
}
