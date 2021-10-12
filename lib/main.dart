import 'package:facily_driver/shared/app_locator.dart';
import 'package:facily_driver/shared/app_routes.dart';
import 'package:facily_driver/shared/app_theme.dart';
import 'package:flutter/material.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facily Driver',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(context).defaultTheme,
      initialRoute: AppRoutes.splashPage,
      routes: routes,
    );
  }
}
