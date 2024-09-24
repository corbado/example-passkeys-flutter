import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';

class ProjectInfo {
  final String id;
  final String name;
  final DateTime created;
  final DateTime updated;

  ProjectInfo(this.id, this.name, this.created, this.updated);

  factory ProjectInfo.fromResponse(Project v) {
    return ProjectInfo(
      v.projectID,
      v.name,
      DateTime.parse(v.created),
      DateTime.parse(v.updated),
    );
  }
}
