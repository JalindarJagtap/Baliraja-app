import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/dropdown_button.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

List<String> man = [
  "लिंग",
  "पुरुष",
  "महिला",
];

class _EditProfileScreenState extends State<EditProfileScreen> {
  String? dropdownValue = "लिंग";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        title: Padding(
          padding: EdgeInsets.only(left: 35.w),
          child: Text(
            'Edit Profile ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Images/backgroundimage.png'),
                  fit: BoxFit.cover)),
          child: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 90,
              horizontal: 25,
            ),
          ),
        ),
      ),
    );
  }

  _customheaderRow(BuildContext context) {
    return const Row(
      children: [],
    );
  }

  _customtextfield(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(top: 35.h),
        child: TextFormFieldWidget(
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
          ),
          hintText: AppStrings.enteryourname,
          style: TextStyle(fontSize: 20.sp),
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
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
              dropdownValue = newValue ?? '11';
            },
          );
        },
      ),
      SizedBox(
        height: 10.h,
      ),
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: TextFormFieldWidget(
          decoration: const InputDecoration(),
          hintText: AppStrings.enteryourege,
        ),
      ),
      SizedBox(
        height: 10.h,
      ),
    ]);
  }

  _customOutlinedButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Container(
        height: 50.h,
        width: 120.w,
        child: OutlineButtonWidget(
          onPressed: () {},
          borderRadius: 20,
          text: AppStrings.buttontext,
        ),
      ),
    );
  }
}
