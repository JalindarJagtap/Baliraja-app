import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/dropdown_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

List<String> man = [
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
              _customOutlinedButton(context),
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
        TextWidget(
          data: AppStrings.editProfile,
          color: Colors.black38,
        ),
      ],
    );
  }

  _customtextfield(BuildContext context) {
    return Column(children: [
      TextField(
        decoration: InputDecoration(
          hintText: AppStrings.enteryourname,
          hintStyle: TextStyle(fontSize: 20, color: AppColors.blackColor),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      // TextField(
      //   decoration: InputDecoration(
      //     hintText: AppStrings.enteryourphonenumber,
      //     hintStyle: TextStyle(fontSize: 20, color: AppColors.blackColor),
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(10),
      //     ),
      //   ),
      // ),
      SizedBox(
        height: 10.h,
      ),
      CustomDropdownButton(
        items: [
          man[0],
          man[1],
          man[2],
        ],
        selectedValue: dropdownValue,
        onChanged: (String? newValue) {
          setState(
            () {
              dropdownValue = newValue ?? '111';
            },
          );
        },
      ),
      SizedBox(
        height: 10.h,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: AppStrings.enteryourege,
          hintStyle: TextStyle(color: AppColors.blackColor),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
      TextField(
        decoration: InputDecoration(
          hintText: AppStrings.enteryourvilage,
          hintStyle: TextStyle(color: Colors.black, fontSize: 25.sp),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.r)),
        ),
      ),
      SizedBox(
        height: 25.h,
      ),
    ]);
  }

  _customOutlinedButton(BuildContext context) {
    return Container(
      height: 30.h,
      width: 120.w,
      child: OutlineButtonWidget(
        onPressed: () {},
        borderRadius: 30,
        text: AppStrings.outlineButtonWidget,
      ),
    );
  }
}
