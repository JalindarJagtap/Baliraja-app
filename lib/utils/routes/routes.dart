import 'package:baliraja/presentatioin/edit_profile_screen/edit_profile_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const String editProfileScreen="/editProfile";

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: editProfileScreen,
    routes: [
      // GoRoute(
      //   path: splashScreen,
      //   builder: (context, state) => const SplashScreen(),
      // ),

      GoRoute(
        path: editProfileScreen,
        builder: (context, state) => EditProfileScreen(), 
        )
    ],
  );
}
