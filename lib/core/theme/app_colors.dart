import 'package:flutter/material.dart';

/// Warm, restrained palette tuned for 40+ users.
///
/// Placeholder values - to be refined when design tokens land. The intent is
/// to favour warm earth tones (rose, cream, terracotta) over saturated neons.
class AppColors {
  AppColors._();

  // Primary - warm rose.
  static const Color primary = Color(0xFFC2185B);
  static const Color primaryDark = Color(0xFF8E1746);
  static const Color primaryLight = Color(0xFFE6A1BC);

  // Accent - terracotta for highlights / haptic moments.
  static const Color accent = Color(0xFFD84315);

  // Surfaces.
  static const Color surface = Color(0xFFFFFBF8);
  static const Color surfaceVariant = Color(0xFFF5EFEB);
  static const Color surfaceCard = Colors.white;

  // Text - WCAG AA on white.
  static const Color textPrimary = Color(0xFF1A1A1A);
  static const Color textSecondary = Color(0xFF555555);
  static const Color textHint = Color(0xFF8A8A8A);
  static const Color textInverse = Colors.white;

  // Status.
  static const Color error = Color(0xFFB3261E);
  static const Color success = Color(0xFF2E7D32);
  static const Color warning = Color(0xFFEF6C00);

  // Lines.
  static const Color outline = Color(0xFFE0DBD7);
  static const Color outlineStrong = Color(0xFFBDB8B4);

  // Disabled.
  static const Color disabledBackground = Color(0xFFE5E2DF);
  static const Color disabledForeground = Color(0xFF9D9D9D);
}
