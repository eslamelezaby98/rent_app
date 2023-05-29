import 'package:flutter/material.dart';
import 'package:rent_app/config/app_theme/app_color.dart';

class AppTheme {
  ThemeData getTheme() {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.white,
      appBarTheme: AppBarTheme(
        color: AppColor.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: AppColor.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        fillColor: Colors.white,
        labelStyle: TextStyle(color: AppColor.black),
        border: getBorder(AppColor.mainColor),
        focusedBorder: getBorder(AppColor.mainColor),
        errorBorder: getBorder(Colors.red),
      ),
    );
  }

  static getBorder(Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(
        color: color,
        width: 0.5,
      ),
    );
  }
}
