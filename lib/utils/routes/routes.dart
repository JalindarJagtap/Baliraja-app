import 'package:baliraja/presentatioin/cow_sales_screen/cow_sales_screen.dart';
import 'package:baliraja/presentatioin/email_varification_sceen/email_varification_screen.dart';
import 'package:baliraja/presentatioin/merchand_screen/merchand_screen.dart';
import 'package:baliraja/presentatioin/otp_screen/otp_screen.dart';
import 'package:baliraja/presentatioin/edit_profile_screen/edit_profile_screen.dart';
import 'package:baliraja/presentatioin/home_screen/home_screen.dart';
import 'package:baliraja/presentatioin/splash_screen/splash_screen.dart';
import 'package:baliraja/presentatioin/user_account_screen/user_account_screen.dart';
import 'package:baliraja/presentatioin/user_profile_screen/user_profile_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const String useraccountscreen = "/useraccountscreen";
  static const String homeScreen = "/home-screen";
  static const String cowsalesscreen = "/cowsale";
  static const String otpscreen = "/otp";
  static const String userprofile = "/user-profile";
  static const String editprofile = "/edit-profile";
  static const String merchantscreen= "/merchantscreen";
  static const String emailvarification= "/emailvarification";


  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: splashScreen,
    routes: [
      GoRoute(
        path: splashScreen,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: cowsalesscreen,
        builder: (context, state) => const CowSales(),
      ),
      GoRoute(
        path: otpscreen,
        builder: (context, state) => const GetOtpScreen(),
      ),
      GoRoute(
        path: useraccountscreen,
        builder: (context, state) => const UserAccountScreen(),
      ),
      GoRoute(
        path: homeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: editprofile,
        builder: (context, state) => const EditProfileScreen(),
      ),
      GoRoute(path: userprofile ,
       builder: (context, state) => const User_Profile_Screen (),
      ),
      GoRoute(path: merchantscreen ,
       builder: (context, state) => const MerchantScreen (),
      ),
      GoRoute(path: emailvarification ,
       builder: (context, state) => const EmailVarificationScreen (),
      ),
    ],
  );
}
