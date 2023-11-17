import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/services/auth/auth.dart';
import 'package:riverpod/riverpod.dart';

final corbadoProvider = Provider<CorbadoAuth>(
        (ref) => throw UnimplementedError("no instance of corbadoAuth"));

final authServiceProvider = Provider<AuthService>((ref) {
  final corbado = ref.watch(corbadoProvider);
  return AuthService(corbado);
});

final userProvider = StreamProvider<User?>((ref) async* {
  final corbado = ref.watch(corbadoProvider);
  await for (final value in corbado.userChanges) {
    yield value;
  }
});

final authStateProvider = StreamProvider<AuthState>((ref) async* {
  final corbado = ref.watch(corbadoProvider);
  await for (final value in corbado.authStateChanges) {
    yield value;
  }
});

final passkeysProvider = StreamProvider<List<PasskeyInfo>>((ref) async* {
  final corbado = ref.watch(corbadoProvider);
  await for (final value in corbado.passkeysChanges) {
    yield value;
  }
});
