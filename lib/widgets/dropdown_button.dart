import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropdownButton extends StatefulWidget {
  final List<String>? items;
  String? selectedValue;
  final ValueChanged<String>? onChanged;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  CustomDropdownButton({
    this.items,
    this.selectedValue,
    this.onChanged,
    this.color,
    this.fontWeight,
    this.fontSize,
        
  });

  @override
  CustomDropdownButtonState createState() => CustomDropdownButtonState();
}

class CustomDropdownButtonState extends State<CustomDropdownButton> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: InputDecorator(
        
        decoration: InputDecoration(
       
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: DropdownButton<String>(
          value: widget.selectedValue,
          icon: const Icon(Icons.keyboard_arrow_down),
          iconSize: 28.sp,
          style: GoogleFonts.kumbhSans(
            fontSize: 25.sp,
            fontWeight: FontWeight.w900,
          ),
          onChanged: (String? newValue) {
            setState(() {
              widget.selectedValue = newValue;
              widget.onChanged?.call(newValue ?? '');
            });
          },
          items: widget.items?.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}
