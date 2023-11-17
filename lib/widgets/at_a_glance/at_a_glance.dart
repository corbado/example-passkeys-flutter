import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AtAGlance extends ConsumerWidget {
  const AtAGlance({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(statsProvider);
    return stats.when(
        data: (data) {
          int totalUsers = 0;
          int monthlyActiveUsers = 0;

          if (data.parts.isNotEmpty) {
            totalUsers = data.parts.last.totalUsers;
            monthlyActiveUsers = data.parts.last.activeUsers;
          }

          return Table(
            columnWidths: const {
              0: FlexColumnWidth(2),
              1: FlexColumnWidth(1),
            },
            children: [
              TableRow(children: [
                Text(
                  'Total users',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Text(totalUsers.toString())
              ]),
              TableRow(children: [
                Text('Monthly active users',
                    style: Theme.of(context).textTheme.headlineSmall),
                Text(monthlyActiveUsers.toString())
              ])
            ],
          );
        },
        error: (error, stacktrace) => const Text('Stats could not be loaded'),
        loading: () => Container(
              height: 50,
            ));
  }
}
