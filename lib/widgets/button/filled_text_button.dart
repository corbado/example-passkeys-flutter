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

  void onPressed() {
    if (isLoading) {
      return;
    }

    onTap();
  }

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
          disabledBackgroundColor: Colors.grey.withOpacity(0.25),
          padding: const EdgeInsets.all(15)),
      onPressed: disabled ? null : onPressed,
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
