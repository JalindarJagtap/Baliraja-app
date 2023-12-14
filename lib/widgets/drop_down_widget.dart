import 'package:baliraja/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DropdownWidget extends StatefulWidget {
  final List<String>? items;
  String? selectedValue;
  final ValueChanged<String>? onChanged;
  final Color? color;
  final FontWeight? fontWeight;
  final double? fontSize;

  DropdownWidget({
    this.items,
    this.selectedValue,
    this.onChanged,
    this.color,
    this.fontWeight,
    this.fontSize,
  });

  @override
  DropdownWidgetState createState() => DropdownWidgetState();
}

class DropdownWidgetState extends State<DropdownWidget> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      
      child: DropdownButton<String>(
        value: widget.selectedValue,
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 20.sp,
        style: GoogleFonts.kumbhSans(
          fontSize: 15.sp,
          fontWeight: FontWeight.w900,
          color: AppColors.blackColor,
        
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
    );
  }
}
