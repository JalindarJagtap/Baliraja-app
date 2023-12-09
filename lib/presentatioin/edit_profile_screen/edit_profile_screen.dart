import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}
List<String> cowname = [
  "लिंग ",
  "पुरुष ",
  "महिला",
];
class _EditProfileScreenState extends State<EditProfileScreen> {
  String? dropdownValue = "लिंग ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
          child: Column(
            children: [
              _customheaderRow(context),
              const CircleAvatar(),
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
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            ),
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
        CustomDropdownButton(
          items: [
            cowname[0],
            cowname[1],
            cowname[2],
          ],
          selectedValue: dropdownValue,
          onChanged: (String? newValue) {
            setState(
              () {
                dropdownValue = newValue ?? '';
              },
            );
          },
        ),
        SizedBox(
          height: 10.h,
        ),
      ],
    );
  }
}
