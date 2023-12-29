import 'package:data_table_2/data_table_2.dart';
import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:developer_panel_app/widgets/auth_event_list/datasource.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AuthEventList extends HookConsumerWidget {
  const AuthEventList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectService = ref.read(projectServiceProvider);

    return AsyncPaginatedDataTable2(
      columnSpacing: 5,
      horizontalMargin: 10,
      dataTextStyle: Theme.of(context).textTheme.bodySmall,
      headingTextStyle: Theme.of(context).textTheme.headlineSmall,
      empty: const Center(child: Text('No recent auth events.')),
      columns: const [
        DataColumn2(label: Text('Type'), size: ColumnSize.S),
        DataColumn2(label: Text('Method')),
        DataColumn2(label: Text('Name'), size: ColumnSize.L),
        DataColumn2(label: Text('Status')),
        DataColumn2(label: Text('Created')),
      ],
      source: DataSourceAsync(projectService),
    );
  }
}
