//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/projects_api.dart';
part 'api/users_api.dart';

part 'model/auth_log.dart';
part 'model/auth_stat.dart';
part 'model/error_response.dart';
part 'model/paging.dart';
part 'model/project.dart';
part 'model/project_user.dart';
part 'model/user.dart';
part 'model/v1_projects_delete_delete200_response.dart';
part 'model/v1_projects_delete_delete_request.dart';
part 'model/v1_projects_get200_response.dart';
part 'model/v1_projects_get200_response_data.dart';
part 'model/v1_projects_post200_response.dart';
part 'model/v1_projects_post_request.dart';
part 'model/v1_projects_project_id_auth_stats_get200_response.dart';
part 'model/v1_projects_project_id_auth_stats_get200_response_data.dart';
part 'model/v1_projects_project_id_authlogs_get200_response.dart';
part 'model/v1_projects_project_id_authlogs_get200_response_data.dart';
part 'model/v1_projects_project_id_users_get200_response.dart';
part 'model/v1_projects_project_id_users_get200_response_data.dart';
part 'model/v1_users_put_request.dart';

/// An [ApiClient] instance that uses the default values obtained from
/// the OpenAPI specification file.
var defaultApiClient = ApiClient();

const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
const _deepEquality = DeepCollectionEquality();
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

bool _isEpochMarker(String? pattern) =>
    pattern == _dateEpochMarker || pattern == '/$_dateEpochMarker/';
