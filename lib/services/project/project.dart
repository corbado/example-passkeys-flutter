import 'package:developer_panel_app/models/auth_event.dart';
import 'package:developer_panel_app/models/paginated_list.dart';
import 'package:developer_panel_app/models/project_stats.dart';
import 'package:developer_panel_app/models/user.dart';
import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart' as api;

class ProjectService {
  final api.ProjectsApi _projectsApi;
  final String _projectId;

  ProjectService(String projectID, api.ApiClient apiClient)
      : _projectsApi = api.ProjectsApi(apiClient),
        _projectId = projectID;

  Future<PaginatedList<User>> getUserList(int startIndex, int count) async {
    final users = await _projectsApi.v1ProjectsProjectIDUsersGet(
      _projectId,
      page: startIndex,
      pageSize: count,
      sort: 'created:desc',
    );
    if (users == null) {
      return PaginatedList.empty();
    }

    return PaginatedList(
      currentItems: users.data?.users.map((e) => User.fromResponse(e)).toList() ?? [],
      totalItems: users.data?.paging.totalItems ?? 0,
    );
  }

  Future<ProjectStats> getProjectStats() async {
    final raw = await _projectsApi.v1ProjectsProjectIDAuthStatsGet(_projectId);

    return ProjectStats.fromResponse(raw?.data?.stats ?? []);
  }

  Future<PaginatedList<AuthEvent>> getAuthEvents(int startIndex, int count) async {
    final raw = await _projectsApi.v1ProjectsProjectIDAuthlogsGet(
      _projectId,
      page: startIndex,
      pageSize: count,
      sort: 'created:desc',
    );
    if (raw == null) {
      return PaginatedList.empty();
    }

    return PaginatedList(
      currentItems: raw.data?.rows.map((e) => AuthEvent.fromResponse(e)).toList() ?? [],
      totalItems: raw.data?.paging.totalItems ?? 0,
    );
  }
}
