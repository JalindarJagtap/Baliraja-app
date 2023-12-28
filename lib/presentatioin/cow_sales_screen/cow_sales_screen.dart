import 'package:baliraja/constants/app_sizes.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/dropdown_button.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CowSales extends StatefulWidget {
  const CowSales({super.key});

  @override
  State<CowSales> createState() => _CowSalesState();
}

List<String> cowname = ["जर्सी", "खिलारी", "डांगी", "देवणी", "गीर गाय"];
List<String> vet = [
  "वेत निवडा",
  "पहिलारू",
  "दुसरं वेत",
  "तिसरं वेत",
  "चौथं वेत",
];

class _CowSalesState extends State<CowSales> {
  String? dropdownValue = "जर्सी";
  String? dropdownValue1 = "वेत निवडा";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Theme.of(context).shadowColor,
          ),
          title: Center(
            child: TextWidget(
              context: context,
              data: AppStrings.gaivikri,
              color: Theme.of(context).shadowColor,
              fontSize: AppSizes.const20pxTextSize, hintText: '',
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20, top: 12),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/Images/baliraja.png'),
                radius: 40.0,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w, vertical: 10.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.gainivada,
                      fontSize: AppSizes.medium14pxTextSize,
                      color: Theme.of(context).shadowColor, hintText: '',
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColorDark,
                      size: 10.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomDropdownButton(
                  items: [
                    cowname[0],
                    cowname[1],
                    cowname[2],
                    cowname[3],
                    cowname[4]
                  ],
                  selectedValue: dropdownValue,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue = newValue ?? '';
                    });
                  },
                ),
                SizedBox(
                  height: 12.h,
                ),
            
                //first textfield colse
                Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.vet,
                      fontSize: AppSizes.medium14pxTextSize,
                      color: Theme.of(context).shadowColor, hintText: '',
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColorDark,
                      size: 10.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                CustomDropdownButton(
                  items: [
                    vet[0],
                    vet[1],
                    vet[2],
                    vet[3],
                    vet[4],
                  ],
                  selectedValue: dropdownValue1,
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue ?? '';
                    });
                  },
                ),
                //second textfiled colse
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.gaichedudh,
                      fontSize: AppSizes.medium14pxTextSize,
                      color: Theme.of(context).shadowColor, hintText: '',
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColorDark,
                      size: 10.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                TextFormFieldWidget(
                  hintText: AppStrings.dahaliter,
                  fontSize: AppSizes.heavy18pxTextSize,
                  fontWeight: FontWeight.bold, decoration: InputDecoration(),
                ),
                   SizedBox(
                  height: 12.h,
                ),
                //third close
                Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.dudhachishamata,
                      fontSize: AppSizes.medium14pxTextSize,
                      color: Theme.of(context).shadowColor, hintText: '',
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColorDark,
                      size: 10.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                TextFormFieldWidget(
                  decoration: InputDecoration(),
                  hintText: AppStrings.dahaliter,
                  fontSize: AppSizes.heavy18pxTextSize,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 12.h,
                ),
                //fourth textfiled close
                   Row(
                  children: [
                    TextWidget(
                      context: context,
                      data: AppStrings.kimat,
                      fontSize: AppSizes.medium14pxTextSize,
                      color: Theme.of(context).shadowColor, hintText: '',
                    ),
                    Icon(
                      Icons.star,
                      color: Theme.of(context).primaryColorDark,
                      size: 10.sp,
                    ),
                  ],
                ),
                SizedBox(
                  height: 7.h,
                ),
                TextFormFieldWidget(
                  decoration: InputDecoration(),
                  fontSize: AppSizes.heavy18pxTextSize,
                  fontWeight: FontWeight.bold,
                ),
                   SizedBox(
                  height: 7.h,
                ),
             Divider(color: Theme.of(context).shadowColor,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
