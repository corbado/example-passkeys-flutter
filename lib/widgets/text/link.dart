import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkParagraph extends StatelessWidget {
  final String? preText;
  final String linkText;
  final Function() onTap;

  const LinkParagraph({
    super.key,
    this.preText,
    required this.linkText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final secondary = Theme.of(context).colorScheme.secondary;

    final linkStyle =
        Theme.of(context).textTheme.bodyMedium!.copyWith(color: secondary);

    final preTextStyle = Theme.of(context).textTheme.bodyMedium;

    return Text.rich(TextSpan(children: [
      TextSpan(text: preText, style: preTextStyle),
      TextSpan(
        text: linkText,
        style: linkStyle,
        recognizer: TapGestureRecognizer()..onTap = onTap,
      )
    ]));
  }
}
