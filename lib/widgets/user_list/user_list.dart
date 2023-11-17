import 'package:data_table_2/data_table_2.dart';
import 'package:developer_panel_app/providers/devpanel_provider.dart';
import 'package:developer_panel_app/widgets/user_list/datasource.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserList extends HookConsumerWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectService = ref.read(projectServiceProvider);

    return AsyncPaginatedDataTable2(
      columnSpacing: 5,
      horizontalMargin: 10,
      dataTextStyle: Theme.of(context).textTheme.bodySmall,
      headingTextStyle: Theme.of(context).textTheme.headlineSmall,
      empty: const Center(child: Text('Your project does not have any users yet.')),
      columns: const [
        DataColumn2(
          label: Text('ID'),
        ),
        DataColumn2(
          label: Text('Name'),
        ),
        DataColumn2(
          label: Text('Created'),
        )
      ],
      source: DessertDataSourceAsync(projectService),
    );
  }
}
