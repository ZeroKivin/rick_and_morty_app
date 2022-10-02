import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/assets/theme/app_color.dart';
import 'package:rick_and_morty_app/assets/theme/app_typography.dart';

class AppTheme {
  AppTheme._(this.themeData);

  final ThemeData themeData;

  factory AppTheme.light() {
    return AppTheme._(
      ThemeData(
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(),
        scaffoldBackgroundColor: AppColor.white,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primaryBlue,
          onPrimary: AppColor.white,
          secondary: AppColor.orange,
          onSecondary: AppColor.white,
          error: AppColor.red,
          onError: AppColor.white,
          background: AppColor.white,
          onBackground: AppColor.black,
          surface: AppColor.white,
          onSurface: AppColor.black,
        ),
        extensions: [
          const ColorTheme(
            white: AppColor.white,
            black: AppColor.black,
            primaryBlue: AppColor.primaryBlue,
            darkBlue: AppColor.darkBlue,
            orange: AppColor.orange,
            red: AppColor.red,
            grey: AppColor.grey,
          ),
          CharacterListTypography(
            cardTitle: AppTypography.medium14.copyWith(
              color: AppColor.white,
            ),
          ),
        ],
        appBarTheme: AppBarTheme(
          color: AppColor.primaryBlue,
          scrolledUnderElevation: 8,
          titleTextStyle: AppTypography.medium20.copyWith(
            color: AppColor.white,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: AppColor.primaryBlue,
          unselectedItemColor: AppColor.primaryBlue,
        ),
      ),
    );
  }

  factory AppTheme.dark() {
    return AppTheme._(
      ThemeData(
        useMaterial3: true,
        pageTransitionsTheme: const PageTransitionsTheme(),
      ),
    );
  }
}
