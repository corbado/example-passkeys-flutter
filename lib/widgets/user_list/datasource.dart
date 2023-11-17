import 'package:data_table_2/data_table_2.dart';
import 'package:developer_panel_app/services/project/project.dart';
import 'package:flutter/material.dart';

class DessertDataSourceAsync extends AsyncDataTableSource {
  final ProjectService _projectService;

  DessertDataSourceAsync(this._projectService);

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    final int startPage = (startIndex / count).floor();
    final list = await _projectService.getUserList(startPage + 1, count);
    return AsyncRowsResponse(
        list.totalItems,
        list.currentItems.map((user) {
          return DataRow(
            key: ValueKey<String>(user.id),
            cells: [
              DataCell(Text(user.id)),
              DataCell(Text(user.name)),
              DataCell(Text(user.created.toString())),
            ],
          );
        }).toList());
  }
}
