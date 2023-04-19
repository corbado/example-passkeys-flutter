
import 'package:corbado_demo/theme/theme.dart';
import 'package:flutter/material.dart';

void showCustomDialog(BuildContext context, String title, String msg){
  showDialog(context: context, builder: (context) =>
      AlertDialog(title: Text(title), content: Text(msg),actions: [TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("ok", style: TextStyle(color: corbadoDark),))],));
}