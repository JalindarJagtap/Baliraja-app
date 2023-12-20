 
import 'package:baliraja/presentatioin/cow_sales_screen/cow_sales_screen.dart';
import 'package:baliraja/presentatioin/otp_screen/otp_screen.dart';
import 'package:baliraja/presentatioin/edit_profile_screen/edit_profile_screen.dart';
import 'package:baliraja/presentatioin/splash_screen/splash_screen.dart';
import 'package:baliraja/presentatioin/user_account_screen/user_account_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const  String cowsalesscreen ="/cowsale";
  static const String otpscreen= "/otp";
  static const String useraccount="/user-account";
  static const String editprofile = "/edit-profile";
   



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
        path: useraccount,
        builder: (context, state) => const UserAccountScreen(),
      ),
         GoRoute(
        path: editprofile,
        builder: (context, state) => const EditProfileScreen(),
      ),
       GoRoute(
        path: editprofile,
        builder: (context, state) => const EditProfileScreen(),
      ),
       GoRoute(
        path: editprofile,
        builder: (context, state) => const EditProfileScreen(),
      ),
    ],
  );
}
  
 
 
 
