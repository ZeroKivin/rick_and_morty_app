import 'package:flutter/material.dart';

abstract class AppColor {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF212121);
  static const Color primaryBlue = Color(0xFF1B6C98);
  static const Color darkBlue = Color(0xFF002A41);
  static const Color orange = Color(0xFFFF6852);
  static const Color red = Color(0xFFC42606);
  static const Color grey = Color(0xFFBBBBBB);
}

@immutable
class ColorTheme extends ThemeExtension<ColorTheme> {
  const ColorTheme({
    required this.white,
    required this.black,
    required this.primaryBlue,
    required this.darkBlue,
    required this.orange,
    required this.red,
    required this.grey,
  });

  final Color white;
  final Color black;
  final Color primaryBlue;
  final Color darkBlue;
  final Color orange;
  final Color red;
  final Color grey;

  @override
  ThemeExtension<ColorTheme> copyWith({
    Color? white,
    Color? black,
    Color? primaryBlue,
    Color? darkBlue,
    Color? orange,
    Color? red,
    Color? grey,
  }) {
    return ColorTheme(
      white: white ?? this.white,
      black: black ?? this.black,
      primaryBlue: primaryBlue ?? this.primaryBlue,
      darkBlue: darkBlue ?? this.darkBlue,
      orange: orange ?? this.orange,
      red: red ?? this.red,
      grey: grey ?? this.grey,
    );
  }

  @override
  ThemeExtension<ColorTheme> lerp(
    ThemeExtension<ColorTheme>? other,
    double t,
  ) {
    if (other is! ColorTheme) {
      return this;
    }

    return ColorTheme(
      white: Color.lerp(white, other.white, t)!,
      black: Color.lerp(black, other.black, t)!,
      primaryBlue: Color.lerp(primaryBlue, other.primaryBlue, t)!,
      darkBlue: Color.lerp(darkBlue, other.darkBlue, t)!,
      orange: Color.lerp(orange, other.orange, t)!,
      red: Color.lerp(red, other.red, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
    );
  }
}
