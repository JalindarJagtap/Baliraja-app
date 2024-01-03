import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EmailVarificationScreen extends StatefulWidget {
  const EmailVarificationScreen({super.key});

  @override
  State<EmailVarificationScreen> createState() =>
      _EmailVarificationScreenState();
}

class _EmailVarificationScreenState extends State<EmailVarificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgimages), fit: BoxFit.cover),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 240.h, horizontal: 20.w),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        data: AppStrings.enteryouremail,
                        fontSize: 18.sp,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      const TextFormFieldWidget(),
                    ],
                  ),
                  SizedBox(
                    height: 60.h,
                  ),
                  Container(
                    height: 40.h,
                    width: 140.w,
                    child: const OutlineButtonWidget(
                      labelFontSize: 18,
                      text: AppStrings.sendotp,
                      borderRadius: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
