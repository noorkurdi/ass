import 'package:assist_app/core/utils/app_colors.dart';
import 'package:assist_app/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.hintColor,
    brightness: Brightness.light,
    fontFamily: AppStrings.appFont,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: AppColors.primaryColor,
      elevation: 0,
      titleTextStyle: TextStyle(
          color: AppColors.secondaryColor,
          fontSize: 25,
          fontWeight: FontWeight.bold,),
    ),
    textTheme: TextTheme(
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontSize: 22,
        height: 1.4,
      ),
      button: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.bold,
        
      ),
    ),
  );
}
