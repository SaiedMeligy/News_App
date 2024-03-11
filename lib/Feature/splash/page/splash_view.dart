
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news_app/Feature/home/page/home_view.dart';
import 'package:news_app/core/config/pages_route_name.dart';
import 'package:news_app/core/widget/custom_background_widget.dart';
import 'package:news_app/main.dart';

class SplashView extends StatefulWidget {
   SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();

}

class _SplashViewState extends State<SplashView> {
    @override
  void initState() {
    Timer(Duration(seconds : 2),(){
      navigatorKey.currentState!.pushReplacementNamed(PageRouteName.homeView);

    });
  }
  @override
  Widget build(BuildContext context) {
    return CustomBackgroundWidget(child: Image.asset("assets/images/logo.png"));
  }
}
