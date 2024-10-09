import 'package:corbado_auth/src/corbado_auth.dart';
import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';

class UserService {
  final UsersApi _usersApi;
  final ProjectsApi _projectsApi;
  final CorbadoAuth _corbadoAuth;

  UserService(ApiClient apiClient, CorbadoAuth corbadoAuth)
      : _usersApi = UsersApi(apiClient),
        _projectsApi = ProjectsApi(apiClient),
        _corbadoAuth = corbadoAuth;

  Future<String?> updateUsername(String value) async {
    final req = V1UsersPutRequest(name: value);
    await _usersApi.v1UsersPut(req);
    await _corbadoAuth.refreshUser();

    return null;
  }

  Future<String?> deleteUser() async {
    await _usersApi.v1UsersDelete();

    return null;
  }

  Future<List<ProjectInfo>> getProjects() async {
    final raw = await _projectsApi.v1ProjectsGet(page: 0, pageSize: 50);
    if (raw == null || raw.success != true || raw.data == null) {
      return [];
    }

    return raw.data!.projects.map((e) => ProjectInfo.fromResponse(e)).toList();
  }

  Future<void> addProject(String name) async {
    final req = V1ProjectsPostRequest(name: name, allowStaticChallenges: false, webauthnRPID: 'localhost');
    await _projectsApi.v1ProjectsPost(req);
  }
}
