import 'package:developer_panel_app/models/project_info.dart';
import 'package:developer_panel_app/models/project_stats.dart';
import 'package:developer_panel_app/providers/auth_provider.dart';
import 'package:developer_panel_app/providers/project_provider.dart';
import 'package:developer_panel_app/services/project/project.dart';
import 'package:developer_panel_app/services/shared/corbado_project_client/lib/api.dart'
    as project;
import 'package:developer_panel_app/services/shared/developerpanel_client/lib/api.dart'
as developerpanel;
import 'package:developer_panel_app/services/user/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final corbadoDeveloperPanelClientProvider = Provider<developerpanel.ApiClient>((ref) {
  final user = ref.watch(userProvider);

  final client = developerpanel.ApiClient(basePath: 'https://developerpanel.cloud.corbado.io');
  client.addDefaultHeader('Authorization', 'Bearer ${user.value?.idToken ?? ''}');

  return client;
});

final corbadoProjectClientProvider =
    Provider.family<project.ApiClient, String>((ref, projectID) {
  final user = ref.watch(userProvider);

  final client = project.ApiClient(basePath: 'https://backendapi.cloud.corbado.io');
  client.addDefaultHeader('cookie', 'cbo_short_session=${user.value?.idToken ?? ''}');
  client.addDefaultHeader('X-Corbado-Projectid', projectID);

  return client;
});

// services
final userServiceProvider = Provider<UserService>((ref) {
  final client = ref.watch(corbadoDeveloperPanelClientProvider);
  final corbado = ref.watch(corbadoProvider);

  return UserService(client, corbado);
});

final projectServiceProvider = Provider<ProjectService>((ref) {
  final project = ref.watch(projectProvider);
  final client = ref.watch(corbadoProjectClientProvider(project.id));
  return ProjectService(client);
});

final statsProvider = FutureProvider<ProjectStats>((ref) {
  final projectService = ref.watch(projectServiceProvider);
  return projectService.getProjectStats();
});

// data
final userProjectsProvider = FutureProvider<List<ProjectInfo>>((ref) {
  final userService = ref.watch(userServiceProvider);
  return userService.getProjects();
});
