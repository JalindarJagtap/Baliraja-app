import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/button_widget.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class GetOtpScreen extends StatefulWidget {
  const GetOtpScreen({super.key});

  @override
  State<GetOtpScreen> createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: TextWidget(
                      data: AppStrings.varificationCode,
                      fontSize: 28.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    TextWidget(
                      data: AppStrings.pleaseEnterYour,
                      color: Colors.black,
                      fontSize: 22.sp,
                    ),
                    TextWidget(
                      data: AppStrings.otp,
                      fontSize: 22.sp,
                      color: Colors.black,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Pinput(
                      obscuringWidget: TextWidget(
                        context: context,
                        data: AppStrings.obsureOtpText,
                        fontSize: 30.sp,
                        color: Theme.of(context).shadowColor,
                      ),
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(4),
                        FilteringTextInputFormatter.digitsOnly
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
                              borderRadius: BorderRadius.circular(8.r))),
                      defaultPinTheme: PinTheme(
                        height: 40.h,
                        width: 40.w,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color:
                                Theme.of(context).dividerColor.withOpacity(0.4),
                          ),
                          color: Theme.of(context).scaffoldBackgroundColor,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                      ),
                      length: 4,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextWidget(
                          data: AppStrings.resendIn,
                          fontSize: 22.sp,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        TextWidget(
                          data: AppStrings.otpTime,
                          fontSize: 22.sp,
                          
                          color: Colors.black,
                        )
                      ],
                    ),
                  ],
                ),
                Container(
                  height: 40.h,
                  width: 140.w,
                  child: OutlineButtonWidget(
                    labelFontSize: 18,
                    text: AppStrings.done,
                    borderRadius: 10,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
