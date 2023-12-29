import 'package:data_table_2/data_table_2.dart';
import 'package:developer_panel_app/services/project/project.dart';
import 'package:flutter/material.dart';

class DataSourceAsync extends AsyncDataTableSource {
  final ProjectService _projectService;

  DataSourceAsync(this._projectService);

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    final int startPage = (startIndex / count).floor();
    final list = await _projectService.getAuthEvents(startPage + 1, count);
    return AsyncRowsResponse(
        list.totalItems,
        list.currentItems.map((e) {
          final shortName = "${e.userName.substring(0, 5)}...${e.userName.substring(e.userName.length - 5)}";
          return DataRow(
            key: ObjectKey(e),
            cells: [
              DataCell(Text(e.eventType)),
              DataCell(Text(e.method)),
              DataCell(Text(shortName)),
              DataCell(Text(e.status)),
              DataCell(Text(e.created.toString())),
            ],
          );
        }).toList());
  }
}
