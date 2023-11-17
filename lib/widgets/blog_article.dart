import 'package:any_link_preview/any_link_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BlogArticle extends ConsumerWidget {
  final String url;

  const BlogArticle({super.key, required this.url});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
        width: 250,
        height: 250,
        child: AnyLinkPreview(bodyMaxLines: 3, link: url));
  }
}
