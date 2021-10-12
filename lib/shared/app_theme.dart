import 'package:facily_driver/shared/app_style_text.dart';
import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme(this.context);

  ThemeData get defaultTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      primaryColorLight: AppColors.primaryLight,
      primaryColorDark: AppColors.primaryDark,
      colorScheme: const ColorScheme.light(primary: AppColors.primaryDark),
      canvasColor: Colors.white,
      dividerColor: AppColors.darkGrey,
      errorColor: AppColors.error,
      scaffoldBackgroundColor: Colors.white,
      indicatorColor: AppColors.accent,
      textSelectionTheme: _buildTextSelectionTheme(),
      textTheme: const TextTheme(
        bodyText2: TextStyle(color: AppColors.darkGrey),
      ),
      fontFamily: 'OpenSans',
      inputDecorationTheme: _buildInputDecorationTheme(),
      elevatedButtonTheme: _buildElevatedButtonTheme(),
      textButtonTheme: _buildTextButtonTheme(),
      bottomNavigationBarTheme: _buildBottomNavBarTheme(),
      appBarTheme: _buildAppBarTheme(),
    );
  }

  AppBarTheme _buildAppBarTheme() {
    return const AppBarTheme(
        actionsIconTheme: IconThemeData(color: Colors.black),
        iconTheme: IconThemeData(color: Colors.black),
        color: AppColors.appBarColor,
        titleTextStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.w800, fontSize: 20));
  }

  BottomNavigationBarThemeData _buildBottomNavBarTheme() {
    return const BottomNavigationBarThemeData(
      unselectedItemColor: AppColors.grey,
      selectedItemColor: AppColors.primaryDark,
    );
  }

  TextButtonThemeData _buildTextButtonTheme() {
    return TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(AppColors.primaryDark),
      ),
    );
  }

  InputDecorationTheme _buildInputDecorationTheme() {
    ///
    return InputDecorationTheme(
      hintStyle: TextStyle(color: AppColors.grey.withOpacity(.6)),
      contentPadding: const EdgeInsets.all(12),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.primaryDark, width: 1.5),
        borderRadius: BorderRadius.circular(30),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.accent),
        borderRadius: BorderRadius.circular(30),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.accent),
      ),
    );
  }

  ElevatedButtonThemeData _buildElevatedButtonTheme() {
    ////
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.elevatedButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: AppStyleText.buttonText,
      ),
    );
  }

  TextSelectionThemeData _buildTextSelectionTheme() {
    return const TextSelectionThemeData(
      cursorColor: AppColors.accent,
      selectionColor: AppColors.accent,
      selectionHandleColor: AppColors.accentDark,
    );
  }
}
