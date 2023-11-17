import 'package:flutter/material.dart';

class FilledTextButton extends StatelessWidget {
  final VoidCallback onTap;
  final String content;
  final Color? background;
  final bool disabled;
  final bool isLoading;

  const FilledTextButton(
      {super.key,
      required this.content,
      required this.onTap,
      this.background,
      this.disabled = false,
      this.isLoading = false});

  @override
  Widget build(BuildContext context) {
    final textStyle = Theme.of(context)
        .textTheme
        .bodyMedium!
        .copyWith(fontWeight: FontWeight.bold);

    final progressIndicatorSize = textStyle.fontSize!*1.4;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          backgroundColor: background ?? Theme.of(context).colorScheme.primary,
          padding: const EdgeInsets.all(15)),
      onPressed: disabled ? null : onTap,
      child: isLoading
          ? SizedBox(
              height: progressIndicatorSize,
              width: progressIndicatorSize,
              child: CircularProgressIndicator(
                color: textStyle.color,
              ))
          : Text(content, style: textStyle),
    );
  }
}