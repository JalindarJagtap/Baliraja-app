import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppSizes {
  // text sizes
  static double light10pxTextSize = 10.0;
  static double small12pxTextSize = 12.0;
  static double medium14pxTextSize = 14.0;
  static double large16pxTextSize = 16.0;
  static double heavy18pxTextSize = 18.0;
  static double xl24pxTextSize = 24.0;
  static double xxl28pxTextSize = 28.0;
  static double const20pxTextSize = 20.0;
  static double const21pxTextSize = 21.0;
  static double const38pxTextSize = 36.0;

  // screen padding for phone
  static double horizontalScreen25pxPaddingPhone = 25.0;
  static double horizontalScreen20pxPaddingPhone = 20.0;
  static double horizontalScreen12pxPaddingPhone = 12.0;
  static double horizontalScreen8pxPaddingPhone = 8.0;
  static double horizontalScreen5pxPaddingPhone = 5.0;
  static double verticalScreen20pxPaddingPhone = 20.0;
  static double verticalScreen12pxPaddingPhone = 12.0;
  static double verticalScreen8pxPaddingPhone = 8.0;
  static double verticalScreen5pxPaddingPhone = 5.0;

  // static double getPhoneSize(BuildContext context, size) {
  //   // log(size * (MediaQuery.of(context).size.width / 360));
  //   return size * (MediaQuery.of(context).size.width / 420);
  // }

  // static double getTabletSize(BuildContext context, size) {
  //   return size * (MediaQuery.of(context).size.width / 800);
  // }

  // static double getWebSize(BuildContext context, size) {
  //   return size * (MediaQuery.of(context).size.width / 1920);
  // }

  static double setHeight(double value) {
    return value.sh;
  }

  static double setWidth(double value) {
    return value.sw;
  }

  static double height(double value) {
    return value.h;
  }

  static double width(double value) {
    return value.w;
  }
}
