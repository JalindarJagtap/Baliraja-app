import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
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
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _customheaderRow(context),
                _customtextfield(context),
                _customOutlinedButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _customheaderRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        '',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _customtextfield(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Stack(
          children: [
            ClipOval(
              child: Image.asset(
                AppImages.balirajaimg,
                height: 130,
                width: 130,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: IconButton(
                icon: Icon(Icons.camera_alt, color: Colors.white,size: 35.sp,),
                onPressed: () {
                  // Add your onPressed logic here
                },
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h),
          child: TextFormFieldWidget(
            hintText: AppStrings.enteryourname,
            fontSize: 18.sp,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomDropdownButton(
            items: man,
            selectedValue: dropdownValue,
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue;
              });
            },
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: TextFormFieldWidget(
            hintText: AppStrings.enteryourege,
            fontSize:18.sp ,
          ),
        ),
      ],
    );
  }

  Widget _customOutlinedButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 80),
      height: 100,
      width: 150,
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: OutlineButtonWidget(
        onPressed: () {},
        borderRadius: 20,
        text: AppStrings.buttontext,
      ),
    );
  }
}
