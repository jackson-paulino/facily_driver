import 'package:facily_driver/ui/pages/home_page.dart';
import 'package:facily_driver/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const splashPage = 'splash-page';
  static const homePage = 'home-page';
  static const loginPage = 'login-page';
  static const searchPage = 'search-page';
  static const titleDetailsPage = 'title-details-page';
  static const registerUserPage = 'register-user-page';
  static const ratingTitlePage = 'rating-title-page';
  static const usersPage = 'users_page';
}

Map<String, Widget Function(BuildContext)> routes = {
  'splash-page': (_) => const SplashPage(),
  'home-page': (_) => const HomePage(),
};
