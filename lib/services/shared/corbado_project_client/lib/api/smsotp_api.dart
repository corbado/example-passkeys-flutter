//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SMSOTPApi {
  SMSOTPApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Creates SMS OTP and sends it to given phone number
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SmsCodeSendReq] smsCodeSendReq (required):
  Future<Response> smsCodeSendWithHttpInfo(
    SmsCodeSendReq smsCodeSendReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/smsCodes';

    // ignore: prefer_final_locals
    Object? postBody = smsCodeSendReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Creates SMS OTP and sends it to given phone number
  ///
  /// Parameters:
  ///
  /// * [SmsCodeSendReq] smsCodeSendReq (required):
  Future<SmsCodeSendRsp?> smsCodeSend(
    SmsCodeSendReq smsCodeSendReq,
  ) async {
    final response = await smsCodeSendWithHttpInfo(
      smsCodeSendReq,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SmsCodeSendRsp',
      ) as SmsCodeSendRsp;
    }
    return null;
  }

  /// Validates SMS OTP
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] smsCodeID (required):
  ///   ID of SMS OTP
  ///
  /// * [SmsCodeValidateReq] smsCodeValidateReq (required):
  Future<Response> smsCodeValidateWithHttpInfo(
    String smsCodeID,
    SmsCodeValidateReq smsCodeValidateReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/v1/smsCodes/{smsCodeID}/validate'
        .replaceAll('{smsCodeID}', smsCodeID);

    // ignore: prefer_final_locals
    Object? postBody = smsCodeValidateReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Validates SMS OTP
  ///
  /// Parameters:
  ///
  /// * [String] smsCodeID (required):
  ///   ID of SMS OTP
  ///
  /// * [SmsCodeValidateReq] smsCodeValidateReq (required):
  Future<SmsCodeValidateRsp?> smsCodeValidate(
    String smsCodeID,
    SmsCodeValidateReq smsCodeValidateReq,
  ) async {
    final response = await smsCodeValidateWithHttpInfo(
      smsCodeID,
      smsCodeValidateReq,
    );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
        await _decodeBodyBytes(response),
        'SmsCodeValidateRsp',
      ) as SmsCodeValidateRsp;
    }
    return null;
  }
}
