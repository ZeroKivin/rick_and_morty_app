import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/assets/theme/app_color.dart';
import 'package:rick_and_morty_app/assets/theme/app_typography.dart';

extension ThemeContextExtention on BuildContext {
  ColorTheme get colors => Theme.of(this).extension<ColorTheme>()!;

  CharacterListTypography get characterListTypography =>
      Theme.of(this).extension<CharacterListTypography>()!;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
}
