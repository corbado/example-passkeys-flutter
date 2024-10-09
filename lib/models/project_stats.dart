import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';

class ProjectStats {
  final List<ProjectStat> parts;

  const ProjectStats(this.parts);

  factory ProjectStats.fromResponse(List<AuthStat> v) {
    return ProjectStats(v.map((e) => ProjectStat.fromResponse(e)).toList());
  }
}

class ProjectStat {
  final int activeUsers;
  final int countEmailLogin;
  final int countPasskeyLogin;
  final int countPasswordLogin;
  final int failedLogins;
  final int signUps;
  final int successfulLogins;
  final DateTime timePoint;
  final int totalUsers;

  ProjectStat(
      this.activeUsers,
      this.countEmailLogin,
      this.countPasskeyLogin,
      this.countPasswordLogin,
      this.failedLogins,
      this.signUps,
      this.successfulLogins,
      this.timePoint,
      this.totalUsers);

  factory ProjectStat.fromResponse(AuthStat v) {
    return ProjectStat(
      v.activeUsers,
      v.countEmailLogin,
      v.countPasskeyLogin,
      v.countPasswordLogin,
      v.failedLogins,
      v.signUps,
      v.successfulLogins,
      DateTime.parse(v.timePoint),
      v.totalUsers,
    );
  }
}
