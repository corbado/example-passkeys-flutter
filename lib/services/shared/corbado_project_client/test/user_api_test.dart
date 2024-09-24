//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:backend_api_public/api.dart';
import 'package:test/test.dart';

/// tests for UserApi
void main() {
  // final instance = UserApi();

  group('tests for UserApi', () {
    // Lists user auth log
    //
    //Future<UserAuthLogListRsp> userAuthLogList({ String remoteAddress, String userAgent, String sort, List<String> filterLeftSquareBracketRightSquareBracket, int page, int pageSize }) async
    test('test userAuthLogList', () async {
      // TODO
    });

    // Creates a new user
    //
    //Future<UserCreateRsp> userCreate(UserCreateReq userCreateReq) async
    test('test userCreate', () async {
      // TODO
    });

    // Add a custom login identifier to an existing user
    //
    //Future<UserCustomLoginIdentifierCreateRsp> userCustomLoginIdentifierCreate(String userID, UserCustomLoginIdentifierCreateReq userCustomLoginIdentifierCreateReq) async
    test('test userCustomLoginIdentifierCreate', () async {
      // TODO
    });

    // Delete a user's custom login identifier
    //
    //Future<GenericRsp> userCustomLoginIdentifierDelete(String userID, String customLoginIdentifierID, UserCustomLoginIdentifierDeleteReq userCustomLoginIdentifierDeleteReq) async
    test('test userCustomLoginIdentifierDelete', () async {
      // TODO
    });

    // Get a user's custom login identifier
    //
    //Future<UserCustomLoginIdentifierGetRsp> userCustomLoginIdentifierGet(String userID, String customLoginIdentifierID, { String remoteAddress, String userAgent }) async
    test('test userCustomLoginIdentifierGet', () async {
      // TODO
    });

    // Deletes a user
    //
    //Future<GenericRsp> userDelete(String userID, UserDeleteReq userDeleteReq) async
    test('test userDelete', () async {
      // TODO
    });

    // Provides all register devices for given user
    //
    //Future<UserDeviceListRsp> userDeviceList(String userID, { String remoteAddress, String userAgent, String sort, List<String> filterLeftSquareBracketRightSquareBracket, int page, int pageSize }) async
    test('test userDeviceList', () async {
      // TODO
    });

    // Add an email to an existing user
    //
    //Future<UserEmailCreateRsp> userEmailCreate(String userID, UserEmailCreateReq userEmailCreateReq) async
    test('test userEmailCreate', () async {
      // TODO
    });

    // Delete a user's email
    //
    //Future<GenericRsp> userEmailDelete(String userID, String emailID, UserEmailDeleteReq userEmailDeleteReq) async
    test('test userEmailDelete', () async {
      // TODO
    });

    // Get a user's email
    //
    //Future<UserEmailGetRsp> userEmailGet(String userID, String emailID, { String remoteAddress, String userAgent }) async
    test('test userEmailGet', () async {
      // TODO
    });

    // Get a user by ID
    //
    //Future<UserGetRsp> userGet(String userID, { String remoteAddress, String userAgent }) async
    test('test userGet', () async {
      // TODO
    });

    // Lists project users
    //
    //Future<UserListRsp> userList({ String remoteAddress, String userAgent, String sort, List<String> filterLeftSquareBracketRightSquareBracket, int page, int pageSize }) async
    test('test userList', () async {
      // TODO
    });

    // Add a phone number to an existing user
    //
    //Future<UserPhoneNumberCreateRsp> userPhoneNumberCreate(String userID, UserPhoneNumberCreateReq userPhoneNumberCreateReq) async
    test('test userPhoneNumberCreate', () async {
      // TODO
    });

    // Delete a user's phone number
    //
    //Future<GenericRsp> userPhoneNumberDelete(String userID, String phoneNumberID, UserPhoneNumberDeleteReq userPhoneNumberDeleteReq) async
    test('test userPhoneNumberDelete', () async {
      // TODO
    });

    // Get a user's phone number
    //
    //Future<UserPhoneNumberGetRsp> userPhoneNumberGet(String userID, String phoneNumberID, { String remoteAddress, String userAgent }) async
    test('test userPhoneNumberGet', () async {
      // TODO
    });

    // Provides aggregated user stats for project
    //
    //Future<UserStatsListRsp> userStatsList(String granularity, { String remoteAddress, String userAgent, String sort, List<String> filterLeftSquareBracketRightSquareBracket, int page, int pageSize }) async
    test('test userStatsList', () async {
      // TODO
    });

    // Updates a user
    //
    //Future<UserUpdateRsp> userUpdate(String userID, UserUpdateReq userUpdateReq) async
    test('test userUpdate', () async {
      // TODO
    });
  });
}
