import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData() {
    return ThemeData(
      scaffoldBackgroundColor: Color(0xfeFCFAEE),
      appBarTheme: AppBarTheme(
        backgroundColor: Color(0xfe384B70),
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color(0xfeFCFAEE),
        ),
        centerTitle: true,
      ),
      textTheme: TextTheme(
        labelLarge: TextStyle(
          fontSize: 24,
          color: Color(0xfeFCFAEE),
          fontWeight: FontWeight.w400
        ),
        bodyMedium: TextStyle(
          fontSize: 16,
          color: Color(0xfeFCFAEE),
        )
      )
    );
  }
}
