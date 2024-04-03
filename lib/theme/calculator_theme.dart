import 'package:flutter/material.dart';

final ThemeData calculatorTheme = _calculatorTheme();

ThemeData _calculatorTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1.0),
    colorScheme: base.colorScheme.copyWith(
      background: const Color.fromRGBO(41, 41, 41, 1),
      onBackground: const Color.fromRGBO(234, 235, 237, 1),
      primaryContainer: const Color.fromRGBO(33, 42, 53, 1),
      secondaryContainer: const Color.fromRGBO(13, 146, 58, 1),
      tertiaryContainer: const Color.fromRGBO(99, 68, 212, 1),
    )
  );
}