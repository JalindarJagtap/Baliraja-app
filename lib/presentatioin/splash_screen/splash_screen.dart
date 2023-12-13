import 'package:baliraja/constants/app_colors.dart';
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
    GoRouter.of(context).pushReplacement("/cowsale");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.darkBlue,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset("Images/splashimage.png"),
            Image.asset("Images/balirajasplashimage.png"),
          ],
        ),
      ),
    );
  }
}
