import 'package:corbado_demo/theme/custom_material_color.dart';
import 'package:flutter/material.dart';

Color corbadoDark = const Color(0xff090f1f);

ThemeData theme = ThemeData(
// This is the theme of your application.
//
// Try running your application with "flutter run". You'll see the
// application has a blue toolbar. Then, without quitting the app, try
// changing the primarySwatch below to Colors.green and then invoke
// "hot reload" (press "r" in the console where you ran "flutter run",
// or simply save your changes to "hot reload" in a Flutter IDE).
// Notice that the counter didn't reset back to zero; the application
// is not restarted.
  primaryColor: corbadoDark,
  primarySwatch: CustomMaterialColor(corbadoDark),
);
