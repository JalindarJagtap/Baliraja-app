import 'package:baliraja/constants/app_colors.dart';
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
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Images/backgroundimage.png'),
                  fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 90, horizontal: 25),
            child: Column(
              children: [
                _customheaderRow(context),
                const CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage(
                    "assets/Images/baliraja.png",
                  ),
                ),
                _customtextfield(context),
                _customOutlinedButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _customheaderRow(BuildContext context) {
    return Row(
      children: [
        IconButton(color: Colors.white,
          onPressed: () {
            
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        SizedBox(width: 52.w),
         TextWidget(
          context: context,
            hintText: "hello",
          data: AppStrings.editProfile,
          fontSize: 25,
          color: Colors.white,
        ),
      ],
    );
  }

  _customtextfield(BuildContext context) {
    return Column(children: [
   
  
  TextFormFieldWidget(
    decoration: InputDecoration(),
    hintText:AppStrings.enteryourname,
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
              dropdownValue = newValue ?? '111';
            },
          );
        },
      ),
      SizedBox(
        height: 10.h,
      ),
      TextFormFieldWidget(
    decoration: InputDecoration(),
    hintText:AppStrings.enteryourege,
  ),
      SizedBox(
        height: 10.h,
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
        text: AppStrings.OutlineButtonWidget,
      ),
    );
  }
}
