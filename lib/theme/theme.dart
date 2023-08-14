import 'package:corbado_auth_demo/theme/custom_material_color.dart';
import 'package:flutter/material.dart';

Color corbadoDark = const Color(0xff090f1f);

ThemeData theme = ThemeData(
  primaryColor: corbadoDark,
  primarySwatch: CustomMaterialColor(Colors.white70),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
    primary: CustomMaterialColor(Colors.white70),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30), // <-- Radius
    ),
    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
    //             primary: Color(0xFF0E72B5), // This is what you need!
  )),
  inputDecorationTheme: InputDecorationTheme(
    suffixIconColor: Colors.grey.shade400,
    hintStyle: TextStyle(color: Colors.grey.shade400),
    fillColor: Colors.grey.shade100,
    filled: true,
    isDense: true,
    contentPadding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
    enabledBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide(color: Colors.transparent, width: 1.0),
    ),
  ),
);
