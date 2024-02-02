import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/presentatioin/home_screen/home_screen.dart';
import 'package:baliraja/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    _navigateToNextScreen();
    super.initState();
  }

  _navigateToNextScreen() async {
    await Future.delayed(
      const Duration(seconds: 2),
    );
    // ignore: use_build_context_synchronously
    GoRouter.of(context).pushReplacement(Routes.verification);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(AppImages.splashImg),
            Image.asset(AppImages.balirajsSplashImg),
          ],
        ),
      ),
    );
  }
}
