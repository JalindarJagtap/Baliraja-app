import 'package:baliraja/constants/app_string.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/app_colors.dart';

class User_Profile_Screen extends StatelessWidget {
  const User_Profile_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
      ),
      body: Stack(fit: StackFit.expand, children: [
        Image.asset(
          "assets/images/profileback.png",
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.red,
                    foregroundImage: AssetImage('assets/images/baliraja.png'),
                  ),
                ],
              ),
              TextWidget(
                data: AppStrings.username,
                color: AppColors.blackColor,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       TextWidget(
                  //         data: AppStrings.messege,
                  //         color: AppColors.blackColor,
                  //         fontSize: 6.sp,
                  //         fontWeight: FontWeight.normal,
                  //       ),
                  //       Icon(
                  //         Icons.messenger_outline,
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.yellow,
                              Colors.red,
                            ],
                          )),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextWidget(
                            data: AppStrings.messege,
                            fontSize: 20,
                            color: AppColors.blackColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.message)),
                        ],
                      )),
                  Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.yellow,
                              Colors.red,
                            ],
                          )),
                      child:
                          IconButton(onPressed: () {}, icon: Icon(Icons.call))),
                  // IconButton(onPressed: () {}, icon: Icon(Icons.message_sharp)),

                  Container(
                      height: 50,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20)),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.yellow,
                              Colors.red,
                            ],
                          )),
                      child: IconButton(
                          onPressed: () {}, icon: Icon(Icons.message_rounded))),
                ],
              ),
              Container(
                height: 300,
                width: 300,
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person_2_outlined),
                          TextWidget(
                            data: AppStrings.editProfile,
                            color: AppColors.blackColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                              onTap: () {
                                // enter your path here
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.settings),
                          TextWidget(
                            data: AppStrings.setting,
                            color: AppColors.blackColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                              onTap: () {
                                // enter your path here
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.notifications_active),
                          TextWidget(
                            data: AppStrings.notifiacation,
                            color: AppColors.blackColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                              onTap: () {
                                // enter your path here
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.question_mark_outlined),
                          TextWidget(
                            data: AppStrings.setting,
                            color: AppColors.blackColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                              onTap: () {
                                // enter your path here
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.person_add_alt_1_sharp),
                          TextWidget(
                            data: AppStrings.refer,
                            color: AppColors.blackColor,
                            fontSize: 4.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          InkWell(
                              onTap: () {
                                // enter your path here
                              },
                              child: Icon(Icons.arrow_forward_ios))
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  buildListTile(IconData person, String s) {}
}
