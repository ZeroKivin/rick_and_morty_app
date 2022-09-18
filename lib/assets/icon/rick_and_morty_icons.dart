import 'package:flutter/material.dart';

abstract class RickAndMortyIcons {
  RickAndMortyIcons._();

  static const IconData location = IconData(0xe901, fontFamily: _kFontFamily);

  static const IconData rickAndMorty =
      IconData(0xe902, fontFamily: _kFontFamily);

  static const _kFontFamily = 'RickAndMortyIcons';
}
