import 'package:flutter/material.dart';
import 'package:news_app/core/config/app_theme_manager.dart';
import 'package:news_app/main.dart';

class Constants{
static var theme = Theme.of(navigatorKey.currentState!.context);
static var mediaQuery=MediaQuery.of(navigatorKey.currentState!.context).size;
static const String apiKey="00d5e5241900400aaf595617b7596bd3";
static const String baseUrl= "newsapi.org";
static const String endpoint= "/v2/top-headlines/sources";

}