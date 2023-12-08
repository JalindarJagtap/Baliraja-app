 import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(onPressed: () {
                  
                }, icon: Icon(Icons.arrow_back)),
                SizedBox(width: 100.w),
                Text(AppStrings.editProfile,style: TextStyle(color: AppColors.whiteColor),),
              ],
            ),
          ],
        ),
      )
      ),
    );
  }
}