import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/services/shared/corbado_core_client/lib/api.dart';
import 'package:either_dart/either.dart';

class UserService {
  final UsersApi _usersApi;
  final ProjectsApi _projectsApi;

  UserService(ApiClient apiClient)
      : _usersApi = UsersApi(apiClient),
        _projectsApi = ProjectsApi(apiClient);

  Future<String?> updateUsername(String value) async {
    final req = UserUpdateReq(name: value);
    await _usersApi.userUpdate(req);

    return null;
  }

  Future<String?> deleteUser() async {
    await _usersApi.meDelete();

    return null;
  }

  Future<List<ProjectInfo>> getProjects() async {
    final raw = await _projectsApi.projectList();
    if (raw == null) {
      return [];
    }

    return raw.data.projects.map((e) => ProjectInfo.fromResponse(e)).toList();
  }

  Future<Either<ProjectInfo, String>> addProject(String name) async {
    try {
      final req = ProjectCreateReq(name: name);
      final res = await _projectsApi.projectCreate(req);
      return Left(ProjectInfo.fromResponse(res!.data.project));
    } on Exception catch (e) {
      return Right(e.toString());
    }
  }
}
