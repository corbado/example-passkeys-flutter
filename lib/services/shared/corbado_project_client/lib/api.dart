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

part 'api/api_secrets_api.dart';
part 'api/analyzer_api.dart';
part 'api/android_app_config_api.dart';
part 'api/association_tokens_api.dart';
part 'api/auth_methods_api.dart';
part 'api/auth_tokens_api.dart';
part 'api/email_magic_links_api.dart';
part 'api/email_otp_api.dart';
part 'api/email_templates_api.dart';
part 'api/examples_api.dart';
part 'api/ios_app_config_api.dart';
part 'api/passkeys_biometrics_api.dart';
part 'api/project_config_api.dart';
part 'api/request_logs_api.dart';
part 'api/smsotp_api.dart';
part 'api/sms_templates_api.dart';
part 'api/session_config_api.dart';
part 'api/sessions_api.dart';
part 'api/user_api.dart';
part 'api/validation_api.dart';
part 'api/webhook_logs_api.dart';

part 'model/android_app_config_delete_req.dart';
part 'model/android_app_config_item.dart';
part 'model/android_app_config_list_rsp.dart';
part 'model/android_app_config_list_rsp_all_of.dart';
part 'model/android_app_config_save_req.dart';
part 'model/android_app_config_save_rsp.dart';
part 'model/android_app_config_update_req.dart';
part 'model/android_app_config_update_rsp.dart';
part 'model/association_token_create_req.dart';
part 'model/association_token_create_rsp.dart';
part 'model/association_token_create_rsp_all_of.dart';
part 'model/association_token_create_rsp_all_of_data.dart';
part 'model/auth_method.dart';
part 'model/auth_methods_list_req.dart';
part 'model/auth_methods_list_rsp.dart';
part 'model/auth_methods_list_rsp_all_of.dart';
part 'model/auth_methods_list_rsp_all_of_data.dart';
part 'model/auth_token_validate_req.dart';
part 'model/auth_token_validate_rsp.dart';
part 'model/client_info.dart';
part 'model/custom_login_identifier.dart';
part 'model/email.dart';
part 'model/email_code.dart';
part 'model/email_code_get_rsp.dart';
part 'model/email_code_get_rsp_all_of.dart';
part 'model/email_code_get_rsp_all_of_data.dart';
part 'model/email_code_send_req.dart';
part 'model/email_code_send_rsp.dart';
part 'model/email_code_send_rsp_all_of.dart';
part 'model/email_code_send_rsp_all_of_data.dart';
part 'model/email_code_validate_req.dart';
part 'model/email_code_validate_rsp.dart';
part 'model/email_link.dart';
part 'model/email_link_get_rsp.dart';
part 'model/email_link_get_rsp_all_of.dart';
part 'model/email_link_get_rsp_all_of_data.dart';
part 'model/email_link_send_req.dart';
part 'model/email_link_send_rsp.dart';
part 'model/email_link_send_rsp_all_of.dart';
part 'model/email_link_send_rsp_all_of_data.dart';
part 'model/email_link_validate_rsp.dart';
part 'model/email_link_validate_rsp_all_of.dart';
part 'model/email_links_delete_req.dart';
part 'model/email_links_validate_req.dart';
part 'model/email_template_create_req.dart';
part 'model/email_template_create_rsp.dart';
part 'model/email_template_create_rsp_all_of.dart';
part 'model/email_template_create_rsp_all_of_data.dart';
part 'model/email_template_delete_req.dart';
part 'model/email_validation_result.dart';
part 'model/empty_req.dart';
part 'model/error_rsp.dart';
part 'model/error_rsp_all_of.dart';
part 'model/error_rsp_all_of_error.dart';
part 'model/error_rsp_all_of_error_validation.dart';
part 'model/example_get_rsp.dart';
part 'model/example_get_rsp_all_of.dart';
part 'model/full_user.dart';
part 'model/generic_rsp.dart';
part 'model/ios_app_config_delete_req.dart';
part 'model/ios_app_config_item.dart';
part 'model/ios_app_config_list_rsp.dart';
part 'model/ios_app_config_list_rsp_all_of.dart';
part 'model/ios_app_config_save_req.dart';
part 'model/ios_app_config_save_rsp.dart';
part 'model/ios_app_config_update_req.dart';
part 'model/ios_app_config_update_rsp.dart';
part 'model/login_identifier_type.dart';
part 'model/long_session.dart';
part 'model/long_session_get_rsp.dart';
part 'model/long_session_get_rsp_all_of.dart';
part 'model/long_session_get_rsp_all_of_data.dart';
part 'model/long_session_list_rsp.dart';
part 'model/long_session_list_rsp_all_of.dart';
part 'model/long_session_list_rsp_all_of_data.dart';
part 'model/long_session_revoke_req.dart';
part 'model/origin_allowed_req.dart';
part 'model/origin_allowed_rsp.dart';
part 'model/origin_allowed_rsp_all_of.dart';
part 'model/paging.dart';
part 'model/phone_number.dart';
part 'model/phone_number_validation_result.dart';
part 'model/project_config.dart';
part 'model/project_config_get_rsp.dart';
part 'model/project_config_get_rsp_all_of.dart';
part 'model/project_config_save_req.dart';
part 'model/project_config_webhook_test_req.dart';
part 'model/project_config_webhook_test_rsp.dart';
part 'model/project_config_webhook_test_rsp_all_of.dart';
part 'model/project_config_webhook_test_rsp_all_of_data.dart';
part 'model/project_secret_create_req.dart';
part 'model/project_secret_create_rsp.dart';
part 'model/project_secret_delete_req.dart';
part 'model/project_secret_item.dart';
part 'model/project_secret_list_rsp.dart';
part 'model/project_secret_list_rsp_all_of.dart';
part 'model/request_data.dart';
part 'model/request_log.dart';
part 'model/request_log_get_rsp.dart';
part 'model/request_log_get_rsp_all_of.dart';
part 'model/request_logs_list_rsp.dart';
part 'model/request_logs_list_rsp_all_of.dart';
part 'model/request_logs_list_rsp_all_of_data.dart';
part 'model/session_config.dart';
part 'model/session_config_get_rsp.dart';
part 'model/session_config_get_rsp_all_of.dart';
part 'model/session_config_update_req.dart';
part 'model/session_token_create_req.dart';
part 'model/session_token_create_rsp.dart';
part 'model/session_token_create_rsp_all_of.dart';
part 'model/session_token_create_rsp_all_of_data.dart';
part 'model/session_token_verify_req.dart';
part 'model/session_token_verify_rsp.dart';
part 'model/session_token_verify_rsp_all_of.dart';
part 'model/session_token_verify_rsp_all_of_data.dart';
part 'model/sms_code_send_req.dart';
part 'model/sms_code_send_rsp.dart';
part 'model/sms_code_send_rsp_all_of.dart';
part 'model/sms_code_send_rsp_all_of_data.dart';
part 'model/sms_code_validate_req.dart';
part 'model/sms_code_validate_rsp.dart';
part 'model/sms_code_validate_rsp_all_of.dart';
part 'model/sms_template_create_req.dart';
part 'model/sms_template_create_rsp.dart';
part 'model/sms_template_create_rsp_all_of.dart';
part 'model/sms_template_create_rsp_all_of_data.dart';
part 'model/sms_template_delete_req.dart';
part 'model/status.dart';
part 'model/tracking_backup_state.dart';
part 'model/tracking_backup_state_get_rsp.dart';
part 'model/tracking_backup_state_get_rsp_all_of.dart';
part 'model/tracking_browser_detailed_stats.dart';
part 'model/tracking_browser_detailed_stats_list_rsp.dart';
part 'model/tracking_browser_detailed_stats_list_rsp_all_of.dart';
part 'model/tracking_browser_detailed_stats_list_rsp_all_of_data.dart';
part 'model/tracking_browser_stats.dart';
part 'model/tracking_browser_stats_list_rsp.dart';
part 'model/tracking_browser_stats_list_rsp_all_of.dart';
part 'model/tracking_browser_stats_list_rsp_all_of_data.dart';
part 'model/tracking_detailed_stats.dart';
part 'model/tracking_detailed_stats_list_rsp.dart';
part 'model/tracking_detailed_stats_list_rsp_all_of.dart';
part 'model/tracking_detailed_stats_list_rsp_all_of_data.dart';
part 'model/tracking_enums.dart';
part 'model/tracking_enums_get_rsp.dart';
part 'model/tracking_enums_get_rsp_all_of.dart';
part 'model/tracking_os_detailed_stats.dart';
part 'model/tracking_os_detailed_stats_list_rsp.dart';
part 'model/tracking_os_detailed_stats_list_rsp_all_of.dart';
part 'model/tracking_os_detailed_stats_list_rsp_all_of_data.dart';
part 'model/tracking_os_stats.dart';
part 'model/tracking_os_stats_list_rsp.dart';
part 'model/tracking_os_stats_list_rsp_all_of.dart';
part 'model/tracking_os_stats_list_rsp_all_of_data.dart';
part 'model/tracking_raw_list_row.dart';
part 'model/tracking_raw_list_rsp.dart';
part 'model/tracking_raw_list_rsp_all_of.dart';
part 'model/tracking_stats.dart';
part 'model/tracking_stats_list_rsp.dart';
part 'model/tracking_stats_list_rsp_all_of.dart';
part 'model/tracking_stats_list_rsp_all_of_data.dart';
part 'model/user.dart';
part 'model/user_auth_log.dart';
part 'model/user_auth_log_list_rsp.dart';
part 'model/user_auth_log_list_rsp_all_of.dart';
part 'model/user_auth_log_list_rsp_all_of_data.dart';
part 'model/user_create_req.dart';
part 'model/user_create_rsp.dart';
part 'model/user_create_rsp_all_of.dart';
part 'model/user_create_rsp_all_of_data.dart';
part 'model/user_custom_login_identifier_create_req.dart';
part 'model/user_custom_login_identifier_create_rsp.dart';
part 'model/user_custom_login_identifier_create_rsp_all_of.dart';
part 'model/user_custom_login_identifier_create_rsp_all_of_data.dart';
part 'model/user_custom_login_identifier_delete_req.dart';
part 'model/user_custom_login_identifier_get_rsp.dart';
part 'model/user_custom_login_identifier_get_rsp_all_of.dart';
part 'model/user_custom_login_identifier_get_rsp_all_of_data.dart';
part 'model/user_delete_req.dart';
part 'model/user_device.dart';
part 'model/user_device_list_rsp.dart';
part 'model/user_device_list_rsp_all_of.dart';
part 'model/user_email.dart';
part 'model/user_email_create_req.dart';
part 'model/user_email_create_rsp.dart';
part 'model/user_email_create_rsp_all_of.dart';
part 'model/user_email_create_rsp_all_of_data.dart';
part 'model/user_email_delete_req.dart';
part 'model/user_email_get_rsp.dart';
part 'model/user_email_get_rsp_all_of.dart';
part 'model/user_email_get_rsp_all_of_data.dart';
part 'model/user_get_rsp.dart';
part 'model/user_get_rsp_all_of.dart';
part 'model/user_list_rsp.dart';
part 'model/user_list_rsp_all_of.dart';
part 'model/user_list_rsp_all_of_data.dart';
part 'model/user_phone_number.dart';
part 'model/user_phone_number_create_req.dart';
part 'model/user_phone_number_create_rsp.dart';
part 'model/user_phone_number_create_rsp_all_of.dart';
part 'model/user_phone_number_create_rsp_all_of_data.dart';
part 'model/user_phone_number_delete_req.dart';
part 'model/user_phone_number_get_rsp.dart';
part 'model/user_phone_number_get_rsp_all_of.dart';
part 'model/user_phone_number_get_rsp_all_of_data.dart';
part 'model/user_stats.dart';
part 'model/user_stats_list_rsp.dart';
part 'model/user_stats_list_rsp_all_of.dart';
part 'model/user_stats_list_rsp_all_of_data.dart';
part 'model/user_update_req.dart';
part 'model/user_update_rsp.dart';
part 'model/user_update_rsp_all_of.dart';
part 'model/validate_email_req.dart';
part 'model/validate_email_rsp.dart';
part 'model/validate_email_rsp_all_of.dart';
part 'model/validate_phone_number_req.dart';
part 'model/validate_phone_number_rsp.dart';
part 'model/validate_phone_number_rsp_all_of.dart';
part 'model/validation_email.dart';
part 'model/validation_phone_number.dart';
part 'model/web_authn_associate_start_req.dart';
part 'model/web_authn_associate_start_rsp.dart';
part 'model/web_authn_authenticate_finish_rsp.dart';
part 'model/web_authn_authenticate_finish_rsp_all_of.dart';
part 'model/web_authn_authenticate_start_req.dart';
part 'model/web_authn_authenticate_start_rsp.dart';
part 'model/web_authn_authenticate_start_rsp_all_of.dart';
part 'model/web_authn_authenticate_success.dart';
part 'model/web_authn_authenticate_success_all_of.dart';
part 'model/web_authn_authenticator_update_req.dart';
part 'model/web_authn_credential_exists_req.dart';
part 'model/web_authn_credential_exists_rsp.dart';
part 'model/web_authn_credential_exists_rsp_all_of.dart';
part 'model/web_authn_credential_req.dart';
part 'model/web_authn_credential_rsp.dart';
part 'model/web_authn_credential_rsp_all_of.dart';
part 'model/web_authn_finish_req.dart';
part 'model/web_authn_mediation_start_req.dart';
part 'model/web_authn_mediation_start_rsp.dart';
part 'model/web_authn_mediation_start_rsp_all_of.dart';
part 'model/web_authn_register_finish_rsp.dart';
part 'model/web_authn_register_finish_rsp_all_of.dart';
part 'model/web_authn_register_start_req.dart';
part 'model/web_authn_register_start_rsp.dart';
part 'model/web_authn_register_start_rsp_all_of.dart';
part 'model/webauthn_setting_create.dart';
part 'model/webauthn_setting_create_req.dart';
part 'model/webauthn_setting_create_req_all_of.dart';
part 'model/webauthn_setting_create_rsp.dart';
part 'model/webauthn_setting_delete_req.dart';
part 'model/webauthn_setting_get_rsp.dart';
part 'model/webauthn_setting_item.dart';
part 'model/webauthn_setting_item_all_of.dart';
part 'model/webauthn_setting_list_rsp.dart';
part 'model/webauthn_setting_list_rsp_all_of.dart';
part 'model/webauthn_setting_update_req.dart';
part 'model/webauthn_setting_update_rsp.dart';
part 'model/webhook_log.dart';
part 'model/webhook_logs_list_rsp.dart';
part 'model/webhook_logs_list_rsp_all_of.dart';
part 'model/webhook_logs_list_rsp_all_of_data.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
