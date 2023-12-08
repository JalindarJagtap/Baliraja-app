import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  _usertitle(),
                ],
              ),
              Text("data"),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildTextFormField(),
                  const SizedBox(width: 10),
                  _buildTextFormField(),
                  // Add more TextFormFields as needed
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _usertitle() {
    return const Row(
      children: [
        Text("data"),
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: 30,
          backgroundColor: Color.fromARGB(255, 219, 104, 104),
        ),
      ],
    );
  }

  _buildTextFormField() {
    return Container(
      width: 130.w,
      child: Column(
        children: [
          Container(
            color: AppColors.grayColor,
            child: const TextFormFieldWidget(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: const TextFormFieldWidget(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: const TextFormFieldWidget(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: const TextFormFieldWidget(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.h),
          Container(
            color: AppColors.grayColor,
            child: const TextFormFieldWidget(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
