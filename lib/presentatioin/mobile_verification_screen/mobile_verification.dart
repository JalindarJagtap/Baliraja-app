import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_sizes.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/presentatioin/otp_screen/otp_screen.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:baliraja/widgets/textform_field_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController phoneController = TextEditingController(text: "+91");
  // final TextEditingController countrycode = TextEditingController(text: "+91");
  @override
  // void initState() {
  //   // TODO: implement initState
  //   countrycode.text = "+91";
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
                "assets/Images/verification.png",
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
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
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
                     TextFormField(
                      // initialValue: "+91",
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      // decoration:   InputDecoration(
                      //   fillColor: Color.fromARGB(255, 204, 243, 248),
                      // ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50.h),
              SizedBox(
                height: 40.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.whiteColor,
                    textStyle: const TextStyle(),
                    shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                  onPressed: () async {
                    if (phoneController.text.isEmpty) {
                      return;
                    }

                    await FirebaseAuth.instance.verifyPhoneNumber(
                        verificationCompleted:
                            (PhoneAuthCredential credential) {},
                        verificationFailed: (FirebaseAuthException ex) {},
                        codeSent: (String verificationId, int? resendtoken) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GetOtpScreen(
                                    verificationid: verificationId),
                              ));
                        },
                        codeAutoRetrievalTimeout: (String verificationId) {},
                        phoneNumber: phoneController.text.toString());
                  },
                  child: TextWidget(
                    context: context,
                    data: "send Otp",
                    // AppStrings.getOtp,
                    color: AppColors.black,
                    fontSize: AppSizes.xl24pxTextSize,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
