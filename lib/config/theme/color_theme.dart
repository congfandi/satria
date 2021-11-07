import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class ColorTheme {
  static const String secondary = "secondary";
  static const String night = "night";
  static const String light = "light";
  static const String rambo = "rambo";
  static const String black = "black";
  static const String white = "white";
  static const int _primary = 0xffB8D8D8;

  ColorSwatch colors = const ColorSwatch(_primary, {
    secondary: Color(0xff7A9E9F),
    night: Color(0xff4F6367),
    light: Color(0xffEEF5DB),
    rambo: Color(0xffFE5F55),
    black: Color(0xff000000),
    white: Color(0xffFFFFFF),
  });

//primary color

  MaterialColor createMaterialColor(Color color) {
    final List<double> strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (final double strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
