import 'package:flutter/material.dart';

class AppColors {
  // * Non initable class
  const AppColors._();

  /// Primary Colors (for brand identity)
  static const Color primary = Color(0xFF006F8E); // Deep Blue for trust and professionalism
  static const Color primaryAccent = Color(0xFF4FB3D8); // Soft Blue for accents, friendly and inviting
  static const Color primaryContrast = Colors.white; // White for contrast and clarity

  /// Secondary Colors (for contrast and balance)
  static const Color secondary = Color(0xFF333333); // Dark Gray for a neutral, modern feel
  static const Color secondaryAccent = Color(0xFF666666); // Lighter Gray for secondary accents

  /// Calendar and Date Selection Colors
  static const Color calendarBorder = Color(0xFFD6F1FF); // Soft Light Blue for borders
  static const Color calendarText = Color(0xFF4A4A4A); // Dark Gray for text, legible and modern

  /// Background Colors (for light, fresh feel)
  static const Color background = Color(0xFFF7FAFC); // Light Sky Blue for a fresh, airy background
  static const Color surface = Colors.white; // White for clean surfaces like cards and content areas

  /// Text Colors
  static const Color textColor = Color(0xFF2A2A2A); // Charcoal Gray for main text, professional
  static const Color secondaryText = Color(0xFF8A8A8A); // Soft Gray for secondary text, easy on the eyes

  /// Accent Colors (for interactive elements)
  static const Color success = Color(0xFF00C851); // Vibrant Green for successful bids and actions
  static const Color warning = Color(0xFFFF9800); // Bright Orange for warning and bids nearing expiration
  static const Color error = Color(0xFFD32F2F); // Bold Red for expired or invalid actions

  /// Error Text (matching error color)
  static const Color errorText = Color(0xFFD32F2F); // Consistent with error color for error messages

  static const Color progressColorStart = Color(0xFF3366FF);
  static const Color progressColorEnd = Color(0xFF00CCFF);


  static const Color appBarColor = Color(0xFF003366);
  static const Color enabledButton = Color(0xFFCECECE);
  static const Color disabledButton = Color(0xFFE0E0E0);
  static const Color disabledText = Color(0xFFBDBDBD);
  static const Color foreground = Color(0xFFFFFFFF);
  static const Color darkText = Color(0xFFEAF5FF);
  static const Color lightText = Color(0xFFFFFFFF);
  static const Color headerGrey = Color(0xff7E8289);
  static Color? grey = Colors.grey[200];
  static const Color warningOrange = Color(0xFFFFB443);
  static const Color green = Colors.green;
  static const Color criticalRed = Color(0xFFE44545);

  static const Color textTitleColor = Color(0xFF023E8A);
  static const Color buttonColor = Color(0xFF20B2AA);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Colors.transparent;

}
