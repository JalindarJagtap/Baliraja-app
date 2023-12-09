import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_sizes.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/Images/background_image.jpg"),
            fit: BoxFit.fill),
      ),
      child: Column(
        children: [
          Image.asset(
            "Images/verification.png",
            height: 180.h,
            width: 170.w,
          ),
          TextWidget(
            context: context,
            data: AppStrings.varification,
            fontWeight: FontWeight.bold,
            fontSize: AppSizes.xxl30pxTextSize,
            color: AppColors.blackColor,
          ),
          const SizedBox(
            height: 20,
          ),
          TextWidget(
            context: context,
            data: AppStrings.WeText,
            fontSize: AppSizes.heavy18pxTextSize,
            color: AppColors.blackColor,
          ),
          TextWidget(
            context: context,
            data: AppStrings.onyournumber,
            fontSize: AppSizes.heavy18pxTextSize,
            color: AppColors.blackColor,
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
              padding: const EdgeInsets.all(25),
              child: Column(children: [
                Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.enterYourNumber,
                      fontSize: AppSizes.xl24pxTextSize,
                      color: AppColors.blackColor,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  color: AppColors.cyan,
                  child: const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: AppStrings.enterYourNumber,
                        prefixIcon: Icon(
                          Icons.phone,
                        )),
                  ),
                ),
              ])),
          const SizedBox(height: 100),
          Container(
            height: 40.h,
            child: ElevatedButton(
              child: TextWidget(
                context: context,
                data: AppStrings.getOtp,
                color: AppColors.black,
                fontSize: AppSizes.xl24pxTextSize,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.whiteColor,
                textStyle: const TextStyle(),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(
                  Radius.circular(8),
                )),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    ));
  }
}
