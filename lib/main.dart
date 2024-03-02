import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/page/home_view.dart';
import 'package:news_app/Feature/splash/page/splash_view.dart';
import 'package:news_app/core/config/app_theme_manager.dart';
import 'package:news_app/core/config/pages_route_name.dart';
import 'package:news_app/core/config/routs.dart';

GlobalKey<NavigatorState> navigatorKey =  GlobalKey<NavigatorState>();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lightTheme,
      home: SplashView(),
      initialRoute: PageRouteName.initial,
      onGenerateRoute: Routes.onGeneratedRoutes,
      navigatorKey: navigatorKey ,
    );
  }
}


