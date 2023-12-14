import 'package:baliraja/presentatioin/cow_sales_screen/cow_sales_screen.dart';
import 'package:baliraja/presentatioin/merchand_screen/merchand_screen.dart';
import 'package:go_router/go_router.dart';

class Routes {
  static const String splashScreen = "/splash";
  static const  String cowsalesscreen ="/cowsale";
  static const  String vyapariscreen ="/vyapariscreen";


  GoRouter get router => _goRouter;

  late final GoRouter _goRouter = GoRouter(
    initialLocation: splashScreen,
    routes: [
      // GoRoute(
      //   path: splashScreen,
      //   builder: (context, state) => const SplashScreen(),
      // ),
          GoRoute(
        path: cowsalesscreen,
        builder: (context, state) => const CowSales(),
      ),
       GoRoute(
        path: vyapariscreen,
        builder: (context, state) => const MerchantScreen(),
      ),
     
    ],
  );
}
