
import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';

class AuthEvent {
  final String userId;
  final String userName;
  final DateTime created;
  final String status;
  final String method;
  final String eventType;

  const AuthEvent({
    required this.userId,
    required this.userName,
    required this.created,
    required this.status,
    required this.method,
    required this.eventType,
  });

  factory AuthEvent.fromResponse(AuthLog v) {
    return AuthEvent(
      userId: v.userID,
      userName: v.userName,
      created: DateTime.parse(v.created),
      method: v.method,
      eventType: v.eventType,
      status: v.status,
    );
  }
}
