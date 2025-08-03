import 'package:flutter/material.dart';

class AppColors {
  static const Map<int, double> _elevationOpacityDark = {
    1: 0.05,
    2: 0.08,
    3: 0.11,
    4: 0.12,
    6: 0.14,
    8: 0.15,
    12: 0.16,
    16: 0.17,
    24: 0.18,
  };

  static Color surfaceAtElevation(BuildContext context, int dp) {
    final theme = Theme.of(context);
    final surface = theme.colorScheme.surface;
    final tint = theme.colorScheme.surfaceTint;

    final opacity = _elevationOpacityDark[dp] ?? 0.0;

    return Color.alphaBlend(tint.withValues(alpha: opacity), surface);
  }
  

  /// App Color Constants
  static const Color primary = Color(0xFFF6D76E);
  static const Color surface = Color(0xFF121212);
  static const Color surfaceTint = Color(0xFFFFFFFF);

  static const MaterialColor primarySwatch = MaterialColor(
    0xFFF6D76E,
    <int, Color>{
      50: Color(0xFFFEFBF1),
      100: Color(0xFFFCF3D2),
      200: Color(0xFFFBEDBC),
      300: Color(0xFFF9E49E),
      400: Color(0xFFF8DF8B),
      500: Color(0xFFF6D76E), // base
      600: Color(0xFFE0C464),
      700: Color(0xFFAF994E),
      800: Color(0xFF87763D),
      900: Color(0xFF675A2E),
    },
  );
}
