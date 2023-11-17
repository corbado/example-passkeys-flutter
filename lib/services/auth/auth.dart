import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/router.dart';
import 'package:either_dart/either.dart';
import 'package:flutter/material.dart';

class AuthService {
  final CorbadoAuth corbado;

  AuthService(this.corbado);

  Future<String?> signUpEmailInit(String email, String name) async {
    try {
      await corbado.registerWithEmailCode(email: email, fullName: name);
      return null;
    } on UserAlreadyExistsException {
      return 'User "$email" already exists.';
    } on RequiredFieldEmptyException catch (e) {
      return 'Required field "${_mapFieldToString(e.field)}" can not be empty.';
    } on FieldWithInvalidValueException catch (e) {
      return 'Please check the field "${_mapFieldToString(e.field)}", it contains an invalid value.';
    } on Exception catch (e) {
      return _buildErrorFromException(e);
    }
  }

  Future<String?> signUpEmailComplete(String code) async {
    try {
      await corbado.completeEmailCode(code: code, askForPasskeyAppend: true);
    } on RequiredFieldEmptyException catch (e) {
      return 'Code can not be empty.';
    } on CorbadoException catch (e) {
      return e.toString();
    } on Exception catch (e) {
      return _buildErrorFromException(e);
    }

    return null;
  }

  Future<Either<bool, String>> appendPasskey() async {
    try {
      await corbado.appendPasskey();

      return const Left(true);
    } on PasskeyAuthCancelledException {
      debugPrint('user has cancelled and can try again');

      return const Left(false);
    } on Exception catch (e) {
      return Right(_buildErrorFromException(e));
    }
  }

  Future<String?> deletePasskey(String credentialID) async {
    try {
      await corbado.deletePasskey(credentialID);

      return null;
    } on Exception catch (e) {
      return _buildErrorFromException(e);
    }
  }

  void finishSignUp() {
    return corbado.finishSignUp();
  }

  Future<Either<SignInHandler, String>> initAutoFillSignIn() async {
    try {
      final signInHandler = await corbado.autocompletedSignInWithPasskey();
      return Left(signInHandler);
    } on Exception catch (e) {
      return Right(_buildErrorFromException(e));
    }
  }

  Future<Either<String?, String>> signIn(String email) async {
    try {
      await corbado.signInWithPasskey(email: email);
      return const Left(null);
    } on UnknownUserException {
      return Right(
          'User $email does not exist. Please check your email address.');
    } on RequiredFieldEmptyException {
      return const Right('Required field "Email address" can not be empty.');
    } on InvalidPasskeyException catch (e) {
      return _fallbackSignIn(email);
    } on NoPasskeyForDeviceException {
      return _fallbackSignIn(email);
    } on PasskeyAuthCancelledException {
      return _fallbackSignIn(email);
    } on Exception catch (e) {
      return Right(_buildErrorFromException(e));
    }
  }

  Future<Either<String, String>> _fallbackSignIn(String email) async {
    try {
      await corbado.signInWithEmailCode(email: email);
      return Left(Routes.buildEmailOtp(email));
    } on UnknownUserException {
      return Right(
          'User $email does not exist. Please check your email again.');
    } on CorbadoException catch (e) {
      return Right(e.toString());
    } on Exception catch (e) {
      return Right(_buildErrorFromException(e));
    }
  }

  Future<void> refresh() async {
    await corbado.refreshToken();
  }

  void signOut() {
    corbado.signOut();
  }

  String _buildErrorFromException(Exception e) {
    return 'An unexpected error has happened: ${e.toString()}';
  }

  String _mapFieldToString(CorbadoField field) {
    switch (field) {
      case CorbadoField.name:
        return 'Name';
      case CorbadoField.email:
        return 'Email address';
      case CorbadoField.code:
        return 'Code';
    }
  }
}
