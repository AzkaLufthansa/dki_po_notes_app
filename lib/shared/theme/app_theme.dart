import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'text_style.dart';

class AppTheme {
  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      fontFamily: AppTextStyles.fontFamily,
      primaryColor: AppColors.primary,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        surface: AppColors.surface,
        surfaceTint: AppColors.surfaceTint,
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Colors.white.withOpacity(0.87)
        )
      ),
      useMaterial3: true
    );
  }
}
