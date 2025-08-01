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
      ),
      useMaterial3: true
    );
  }
}
