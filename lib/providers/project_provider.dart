import 'package:developer_panel_app/models/project_info.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectProvider = StateProvider<ProjectInfo>(
    (ref) => ProjectInfo('', '', DateTime.now(), DateTime.now()));
