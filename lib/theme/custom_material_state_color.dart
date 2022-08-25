import 'package:flutter/material.dart';

class CustomMaterialStateColor extends MaterialStateColor {
  ///The default color to be used
  final Color defaultColor;

  ///Color that is used when the widget is pressed, held, ...
  final Color activeColor;

  ///Material states which are considered as active
  static const interactiveStates = <MaterialState>{
    MaterialState.pressed,
    MaterialState.hovered,
    MaterialState.focused,
    MaterialState.selected
  };

  ///Initializes the color with given theme
  CustomMaterialStateColor(this.defaultColor, {Color? colorActive})
      : activeColor = colorActive ?? defaultColor,
        super(defaultColor.value);

  ///Returns either [defaultColor] or [activeColor] depending on the current
  /// state
  @override
  Color resolve(Set<MaterialState> states) {
    return states.any(interactiveStates.contains) ? activeColor : defaultColor;
  }
}
