import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserAccountScreen extends StatefulWidget {
  const UserAccountScreen({super.key});

  @override
  State<UserAccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<UserAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppImages.bgimages),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      _usertitle(),
                    ],
                  ),
                ),
                TextWidget(
                  data: AppStrings.centertitle,
                  color: AppColors.blackColor,
                  fontSize: 30.sp,
                  fontWeight: FontWeight.bold,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildTextFormField(),
                    SizedBox(width: 10.w),
                    _buildTextFormField2(),
                  ],
                ),
                _appbutton(),
                SizedBox(
                  height: 10.h,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _usertitle() {
    return Row(
      children: [
        TextWidget(
          data: AppStrings.usertitle,
          color: AppColors.blackColor,
          fontSize: 20.sp,
        ),
        SizedBox(
          width: 10.w,
        ),
        const CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(AppImages.circleAvatarimages),
        ),
      ],
    );
  }

  _buildTextFormField() {
    return SizedBox(
      width: 165.w,
      child: Column(
        children: [
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            lableText: AppStrings.lastname,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.firstname,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.middlename,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.state,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.taluka,
          ),
        ],
      ),
    );
  }

  _buildTextFormField2() {
    return SizedBox(
      width: 165.w,
      child: Column(
        children: [
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.gender,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.age,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.pincode,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.district,
          ),
          SizedBox(height: 10.h),
          TextFormFieldWidget(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            // lableText: AppStrings.village,
          ),
        ],
      ),
    );
  }

  _appbutton() {
    return SizedBox(
      height: 30.h,
      width: 100.w,
      child: const OutlineButtonWidget(
        text: AppStrings.buttontext,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
