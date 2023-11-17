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

part 'model/automated_project_create_req.dart';
part 'model/automated_project_create_result.dart';
part 'model/automated_project_create_rsp.dart';
part 'model/automated_project_create_rsp_all_of.dart';
part 'model/client_info.dart';
part 'model/error_rsp.dart';
part 'model/error_rsp_all_of.dart';
part 'model/error_rsp_all_of_error.dart';
part 'model/error_rsp_all_of_error_validation.dart';
part 'model/generic_rsp.dart';
part 'model/me_delete_req.dart';
part 'model/me_rsp.dart';
part 'model/me_rsp_all_of.dart';
part 'model/paging.dart';
part 'model/project.dart';
part 'model/project_create_req.dart';
part 'model/project_create_result.dart';
part 'model/project_create_rsp.dart';
part 'model/project_create_rsp_all_of.dart';
part 'model/project_delete_req.dart';
part 'model/project_developer_info_create_req.dart';
part 'model/project_developer_info_get_rsp.dart';
part 'model/project_developer_info_get_rsp_all_of.dart';
part 'model/project_invite.dart';
part 'model/project_invite_accept_req.dart';
part 'model/project_invite_accept_rsp.dart';
part 'model/project_invite_accept_rsp_all_of.dart';
part 'model/project_invite_delete_req.dart';
part 'model/project_invite_list_rsp.dart';
part 'model/project_invite_list_rsp_all_of.dart';
part 'model/project_invite_list_rsp_all_of_data.dart';
part 'model/project_invite_req.dart';
part 'model/project_invite_resend_req.dart';
part 'model/project_invite_rsp.dart';
part 'model/project_invite_rsp_all_of.dart';
part 'model/project_invite_rsp_all_of_data.dart';
part 'model/project_list_rsp.dart';
part 'model/project_list_rsp_all_of.dart';
part 'model/project_list_rsp_all_of_data.dart';
part 'model/project_permission.dart';
part 'model/project_permission_list_rsp.dart';
part 'model/project_permission_list_rsp_all_of.dart';
part 'model/project_permission_list_rsp_all_of_data.dart';
part 'model/project_update_req.dart';
part 'model/project_update_rsp.dart';
part 'model/request_data.dart';
part 'model/user_update_req.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
