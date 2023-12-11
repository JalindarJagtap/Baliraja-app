import 'package:baliraja/constants/app_colors.dart';
import 'package:baliraja/constants/app_images.dart';
import 'package:baliraja/main.dart';
import 'package:baliraja/widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';

class MarketRateScreen extends StatefulWidget {
  const MarketRateScreen({super.key});

  @override
  State<MarketRateScreen> createState() => _MarketRateScreenState();
}

class _MarketRateScreenState extends State<MarketRateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.bgimages), fit: BoxFit.fill),
          ),
          child: Column(
            children: [
              TextWidget(
                data: "Welcome",
                fontWeight: FontWeight.bold,
                color: AppColors.blackColor,
              )
            ],
          )),
    );
  }
}
