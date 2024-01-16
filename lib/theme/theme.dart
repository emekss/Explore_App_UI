import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  colorScheme: const ColorScheme.light(
      background: Colors.white,
      primary: Colors.white,
      secondary: Colors.black,
      tertiary: Colors.black),
);

ThemeData darkMode = ThemeData(
    colorScheme: const ColorScheme.dark(
        background: Color.fromARGB(255, 39, 53, 62),
        primary: Color.fromARGB(255, 29, 42, 52),
        secondary: Color.fromARGB(255, 29, 42, 52),
        tertiary: Colors.white));
