import 'package:flutter/material.dart';
import 'package:ofer/src/theme/colors.dart';

class Themes {
  static lightTheme() {
    ThemeData(
      primaryColor: AppColor.primary,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColor.primary,
      ),
    );
  }
}
