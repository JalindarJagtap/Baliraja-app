import 'package:baliraja/constants/app_colors.dart';
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
    this.lableText,
  }) : super(key: key);

  final String? hintText;
  final String? lableText;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final Color? cursorColor;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final Function(String)? onChanged;
  final List<TextInputFormatter>? inputFormatters;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      cursorColor: cursorColor ?? Theme.of(context).shadowColor,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      autofocus: true,
      style: GoogleFonts.kumbhSans(
        fontWeight: fontWeight,
        color: color ?? Theme.of(context).shadowColor,
        fontSize: fontSize,
        height: height,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        labelText: lableText,
        labelStyle: const TextStyle(color: AppColors.blackColor),
        filled: true,
        fillColor: AppColors.graywhiteColor,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.blackColor),
        ),
        border: const OutlineInputBorder(),
        hintStyle: GoogleFonts.kumbhSans(
          fontWeight: fontWeight,
          color: color ?? Theme.of(context).shadowColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
