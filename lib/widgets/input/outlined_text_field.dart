import 'package:flutter/material.dart';

class OutlinedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Function(String)? onChanged;
  final Function()? onTap;
  final TextInputType? textInputType;
  final bool readOnly;

  const OutlinedTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.onTap,
    this.textInputType,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    var color = Theme.of(context).colorScheme.secondary;
    if (readOnly) {
      color = Colors.grey;
    }
    final hintStyle =
        Theme.of(context).textTheme.bodyMedium!.copyWith(color: color);
    final textStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(color: color, fontWeight: FontWeight.bold);

    return TextField(
      controller: controller,
      onChanged: onChanged,
      onTap: onTap,
      style: textStyle,
      keyboardType: textInputType,
      autofillHints: const [AutofillHints.username],
      readOnly: readOnly,
      decoration: InputDecoration(
        hintStyle: hintStyle,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: color, width: 2.0),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: color,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10)),
        hintText: hintText,
      ),
    );
  }
}
