import 'package:flutter/material.dart';

abstract class AppTypography {
  static const TextStyle medium18 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

extension CustomStyle on TextTheme {
  TextStyle get medium18 => AppTypography.medium18;

  TextStyle get medium14 => AppTypography.medium14;
}
