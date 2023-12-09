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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _usertitle(),
                ],
              ),
              TextWidget(
                data: AppStrings.centertitle,
                color: AppColors.blackColor,
                fontSize: 25.sp,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTextFormField(),
                  SizedBox(width: 10.w),
                  _buildTextFormField(),
                ],
              ),
              _appbutton()
            ],
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
          radius: 30,
          backgroundColor: Color.fromARGB(255, 219, 104, 104),
        ),
      ],
    );
  }

  _buildTextFormField() {
    return SizedBox(
      width: 130.w,
      child: Column(
        children: [
          Container(
            color: AppColors.grayColor,
            child: TextFormFieldWidget(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: TextFormFieldWidget(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: TextFormFieldWidget(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: TextFormFieldWidget(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: TextFormFieldWidget(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  _appbutton() {
    return Container(
      width: 140.w,
      child: OutlineButtonWidget(
        buttonWidth: 5.w,
        buttonHeight: 15.h,
        text: AppStrings.buttontext,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
