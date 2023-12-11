import 'package:baliraja/presentatioin/cow_sales_screen/cow_sales_screen.dart';
import 'package:baliraja/presentatioin/edit_profile_screen/edit_profile_screen.dart';
import 'package:baliraja/presentatioin/market_rate_screen/market_rate_screen.dart';
import 'package:baliraja/presentatioin/user_account_screen/user_account_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const String useraccountscreen = "/useraccountscreen";
  static const String marketratescreen = "/marketratescreen";

  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: splashScreen,
    routes: [
      // GoRoute(
      //   path: splashScreen,
      //   builder: (context, state) => SplashScreen(),
      // ),
      GoRoute(
        path: useraccountscreen,
        builder: (context, state) => const UserAccountScreen(),
      ),
       GoRoute(
        path: marketratescreen,
        builder: (context, state) => const MarketRateScreen(),
      ),
    ],
  );
}
