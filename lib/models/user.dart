import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';

class User {
  final String id;
  final String fullName;
  final DateTime created;

  const User({
    required this.id,
    required this.fullName,
    required this.created,
  });

  factory User.fromResponse(ProjectUser v) {
    return User(
      id: v.ID,
      fullName: v.fullName,
      created: DateTime.parse(v.created),
    );
  }
}
