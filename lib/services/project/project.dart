import 'package:developer_panel_app/models/paginated_list.dart';
import 'package:developer_panel_app/models/project_stats.dart';
import 'package:developer_panel_app/models/user.dart';
import 'package:developer_panel_app/services/shared/corbado_project_client/lib/api.dart' as api;

class ProjectService {
  final api.UserApi _userApi;

  ProjectService(api.ApiClient apiClient) : _userApi = api.UserApi(apiClient);

  Future<PaginatedList<User>> getUserList(int startIndex, int count) async {
    final users = await _userApi.userList(
        page: startIndex, pageSize: count, sort: 'created');
    if (users == null) {
      return PaginatedList.empty();
    }

    return PaginatedList(
      currentItems: users.data.users.map((e) => User.fromResponse(e)).toList(),
      totalItems: users.data.paging.totalItems,
    );
  }

  Future<ProjectStats> getProjectStats() async {
    final raw = await _userApi.userStatsList('month');

    return ProjectStats.fromResponse(raw!.data.stats);
  }
}
