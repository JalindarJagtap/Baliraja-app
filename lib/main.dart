import 'package:baliraja/presentatioin/home_screen/home_screen.dart';
import 'package:baliraja/utils/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // usePathUrlStrategy();
  // GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(MyApp()); 
  
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRoutes = Routes();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: appRoutes.router.routeInformationParser,
          routeInformationProvider: appRoutes.router.routeInformationProvider,
          routerDelegate: appRoutes.router.routerDelegate,
        );
        
      },
      
    
    );
    
  }

}
