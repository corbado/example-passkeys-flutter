import 'package:flutter/material.dart';

class OutlinedTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String content;
  final Color? background;

  const OutlinedTextButton(
      {super.key, required this.content, required this.onTap, this.background});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(fontWeight: FontWeight.bold);

    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(
            side: BorderSide(
                color: Theme.of(context).colorScheme.primary
            ),
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: background ?? Theme.of(context).colorScheme.background,
          padding: const EdgeInsets.all(15)),
      onPressed: onTap,
      child: Text(content, style: textStyle),
    );
  }
}
