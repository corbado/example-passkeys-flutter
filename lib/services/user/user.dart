import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart';
import 'package:either_dart/either.dart';

class UserService {
  final UsersApi _usersApi;
  final ProjectsApi _projectsApi;

  UserService(ApiClient apiClient)
      : _usersApi = UsersApi(apiClient),
        _projectsApi = ProjectsApi(apiClient);

  Future<String?> updateUsername(String value) async {
    final req = V1UsersPutRequest(name: value);
    await _usersApi.v1UsersPut(req);

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

  Future<Either<ProjectInfo, String>> addProject(String name) async {
    try {
      final req = V1ProjectsPostRequest(name: name);
      final res = await _projectsApi.v1ProjectsPost(req);
      return Left(ProjectInfo.fromResponse(res!));
    } on Exception catch (e) {
      return Right(e.toString());
    }
  }
}
