import 'package:corbado_auth_example/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../auth_provider.dart';

class DebugInfo extends HookConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final corbadoAuth = ref.watch(corbadoProvider);

    final rpIdSnapshot = useFuture(corbadoAuth.rpId, initialData: "");

    return Positioned(
      left: 4,
      top: 4,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.black87,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SelectableText(
              'Project id: ${corbadoAuth.projectId}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            SelectableText(
              'RPid: ${rpIdSnapshot.data}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
