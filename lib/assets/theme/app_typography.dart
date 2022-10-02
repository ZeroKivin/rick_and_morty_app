import 'package:flutter/material.dart';

abstract class AppTypography {
  static const TextStyle medium20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
  );
  static const TextStyle medium14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}

class CharacterListTypography extends ThemeExtension<CharacterListTypography> {
  const CharacterListTypography({
    required this.cardTitle,
  });

  final TextStyle cardTitle;

  @override
  ThemeExtension<CharacterListTypography> copyWith({
    TextStyle? cardTitle,
  }) {
    return CharacterListTypography(
      cardTitle: cardTitle ?? this.cardTitle,
    );
  }

  @override
  ThemeExtension<CharacterListTypography> lerp(
    ThemeExtension<CharacterListTypography>? other,
    double t,
  ) {
    if (other is! CharacterListTypography) {
      return this;
    }

    return CharacterListTypography(
      cardTitle: TextStyle.lerp(cardTitle, other.cardTitle, t)!,
    );
  }
}
