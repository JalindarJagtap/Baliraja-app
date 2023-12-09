import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? selectedGender; // Declare selectedGender variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: Column(
            children: [
              _customheaderRow(context),
              CircleAvatar(),
              _customtextfield(context),
            ],
          ),
        ),
      ),
    );
  }

  _customheaderRow(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
        SizedBox(width: 100.w),
        const Text(
          AppStrings.editProfile,
          style: TextStyle(color: AppColors.grayColor),
        ),
      ],
    );
  }

  _customtextfield(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Enter your name",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter your phone number",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Row(
          children: [
            Text(
              "Choose Gender:",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(width: 10.w),
            Radio(
              value: "Male",
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value.toString();
                });
              },
            ),
            Text("Male"),
            SizedBox(width: 10.w),
            Radio(
              value: "Female",
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value.toString();
                });
              },
            ),
            Text("Female"),
          ],
        ),
        SizedBox(
          height: 10.h,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Enter your gender",
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
          enabled: false,
          controller: TextEditingController(text: selectedGender ?? ""),
        ),
      ],
    );
  }
}
