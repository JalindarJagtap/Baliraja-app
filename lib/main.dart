import 'package:baliraja/utils/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:go_router/go_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyD52VmvfUrrvh-VGmIeWWbV2zb9dYSGVZE",
    appId: "1:657562198637:android:a60e00274940278f925564",
    messagingSenderId: "657562198637",
    projectId: "balirajafirebase",
  ));
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final appRoutes = Routes();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 740),
      minTextAdapt: true,
      splitScreenMode: true,
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
