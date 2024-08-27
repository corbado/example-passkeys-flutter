import 'package:developer_panel_app/models/project_info.dart';
import 'package:either_dart/either.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class AuthorizedHttpClient extends http.BaseClient {
  final _inner = http.Client();
  final String? _shortSession;

  AuthorizedHttpClient(this._shortSession);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    // Add default headers to the request
    request.headers.addAll({"Authorization": "Bearer $_shortSession"});
    // Send the request using the inner client
    return _inner.send(request);
  }

  @override
  void close() {
    _inner.close();
  }
}

class UserService {
  static const baseUrl = "https://app.corbado.com";
  final http.Client _client;

  UserService(String shortSession)
      : _client = AuthorizedHttpClient(shortSession);

  Future<String?> updateUsername(String value) async {
    final response =
        await _client.put(Uri.parse("$baseUrl/v1/users"), body: {"name": value});
    if (response.statusCode != 200) {
      throw http.ClientException(
          "Request failed with status: ${response.statusCode}");
    }

    return null;
  }

  Future<String?> deleteUser() async {
    await _client.delete(Uri.parse("$baseUrl/v1/users"));

    return null;
  }

  Future<List<ProjectInfo>> getProjects() async {
    final response =
        await _client.get(Uri.parse("$baseUrl/v1/projects?pageSize=100"));

    if (response.statusCode != 200) {
      return [];
    }

    final Map<String, dynamic> jsonResponse = json.decode(response.body);

    final projects = jsonResponse["data"]["projects"] as List<dynamic>;

    if (projects.isEmpty) {
      return [];
    }

    return projects.map((e) => ProjectInfo.fromResponse(e)).toList();
  }

  Future<Either<ProjectInfo, String>> addProject(String name) async {
    try {
      final response = await _client
          .post(Uri.parse("$baseUrl/v1/projects"), body: {"name": name});
      if (response.statusCode == 200 || response.statusCode == 201) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        final String projectId = jsonResponse['data']['projectId'];
        return Left(
            ProjectInfo(projectId, name, DateTime.now(), DateTime.now()));
      } else {
        return const Right("Error occurred trying to create a new project");
      }
    } on Exception catch (e) {
      return Right(e.toString());
    }
  }
}
