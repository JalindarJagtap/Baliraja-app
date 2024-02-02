import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/presentatioin/cow_sales_screen/cow_sales_screen.dart';
import 'package:baliraja/presentatioin/home_screen/home_screen.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

// ignore: must_be_immutable
class GetOtpScreen extends StatefulWidget {
  String verificationid;
  GetOtpScreen({super.key, required this.verificationid});

  @override
  State<GetOtpScreen> createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  TextEditingController OTPController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgimages), fit: BoxFit.cover),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25.h),
                    child: TextWidget(
                        data: AppStrings.varificationCode,
                        fontSize: 28.sp,
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                  Column(
                    children: [
                      TextWidget(
                        data: AppStrings.pleaseEnterYour,
                        color: AppColors.blackColor,
                        fontSize: 22.sp,
                      ),
                      TextWidget(
                        data: AppStrings.otp,
                        fontSize: 22.sp,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(
                        height: 40.h,
                      ),
                      Pinput(
                        controller: OTPController,
                        obscuringWidget: TextWidget(
                          context: context,
                          data: AppStrings.obsureOtpText,
                          fontSize: 30.sp,
                          color: Theme.of(context).shadowColor,
                        ),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(6),
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        closeKeyboardWhenCompleted: true,
                        keyboardType: TextInputType.number,
                        focusedPinTheme: PinTheme(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.4),
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        defaultPinTheme: PinTheme(
                          height: 40.h,
                          width: 40.w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context)
                                  .dividerColor
                                  .withOpacity(0.4),
                            ),
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        length: 6,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            data: AppStrings.resendIn,
                            fontSize: 22.sp,
                            color: AppColors.blackColor,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          TextWidget(
                            data: AppStrings.otpTime,
                            fontSize: 22.sp,
                            color: AppColors.blackColor,
                          )
                        ],
                      ),
                    ],
                  ),
                  // ignore: sized_box_for_whitespace
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      height: 40.h,
                      width: 140.w,
                      child: ElevatedButton(
                        onPressed: isLoading
                            ? null
                            : () async {
                                setState(() {
                                  isLoading = true;
                                });
                                try {
                                  PhoneAuthCredential credential =
                                      PhoneAuthProvider.credential(
                                          verificationId: widget.verificationid,
                                          smsCode:
                                              OTPController.text.toString());
                                  await FirebaseAuth.instance
                                      .signInWithCredential(credential)
                                      .then((value) {
                                    ScaffoldMessenger.of(context)
                                        .showSnackBar(const SnackBar(
                                      content: Text("Otp verfiy Successfuly"),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.green,
                                      behavior: SnackBarBehavior.floating,
                                    ));
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  });
                                } catch (ex) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Enter valid OTP"),
                                      duration: Duration(seconds: 3),
                                      backgroundColor: Colors.red,
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                  debugPrint(ex.toString());
                                } finally {
                                  setState(() {
                                    isLoading = false;
                                  });
                                }
                              },
                        child: isLoading
                            ? const CircularProgressIndicator()
                            : const Text(
                                "Verify OTP",
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
