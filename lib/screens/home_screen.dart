import 'dart:io';

import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/providers/blog_provider.dart';
import 'package:developer_panel_app/providers/project_provider.dart';
import 'package:developer_panel_app/widgets/at_a_glance/at_a_glance.dart';
import 'package:developer_panel_app/widgets/auth_event_list/auth_event_list.dart';
import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/blog_article.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(userProvider);
    final project = ref.watch(projectProvider);
    final blogUrls = ref.watch(blogProvider);

    return BaseBody(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Overview',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Hello, ${authState.value!.username}!',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: double.infinity),
            const SizedBox(height: 25),
            Text(
              'At a glance',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Name: ${project.name}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              'ID: ${project.id}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 20),
            const AtAGlance(),
            Platform.isIOS
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        'Latest passkey articles',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: blogUrls
                              .map((url) => Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: BlogArticle(
                                      url: url,
                                    ),
                                  ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
            const SizedBox(height: 25),
            Text(
              'Auth events',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 500, child: AuthEventList()),
          ],
        ),
      ),
    ));
  }
}
