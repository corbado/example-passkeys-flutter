import 'package:flutter/material.dart';

class CustomMaterialColor extends MaterialColor {
  ///Initializes material color with [color]
  CustomMaterialColor(Color color)
      : super(color.value, {
          50: color,
          100: color,
          200: color,
          300: color,
          400: color,
          500: color,
          600: color,
          700: color,
          800: color,
          900: color,
        });
}
