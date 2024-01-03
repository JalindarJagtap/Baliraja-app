import 'package:baliraja/presentatioin/mobile_verification_screen/mobile_verification.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const String verificationScreen="/verificationscreen";

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: splashScreen,
    routes: [
      // GoRoute(
      //   path: splashScreen,
      //   builder: (context, state) => SplashScreen(),
      // ),
      GoRoute(
        path: verificationScreen,
        builder: (context, state) => const VerificationScreen() ,
        
        )

    ],
  );
}
