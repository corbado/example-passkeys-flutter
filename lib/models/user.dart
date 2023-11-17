
import 'package:developer_panel_app/services/shared/corbado_project_client/lib/api.dart';

class User {
  final String id;
  final String name;
  final DateTime created;
  final DateTime updated;
  final String status;

  const User({
    required this.id,
    required this.name,
    required this.created,
    required this.updated,
    required this.status,
  });

  factory User.fromResponse(FullUser v) {
    return User(
      id: v.ID,
      name: v.name,
      created: DateTime.parse(v.created),
      updated: DateTime.parse(v.updated),
      status: v.status.value,
    );
  }
}
