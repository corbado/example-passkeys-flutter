import 'package:corbado_auth/corbado_auth.dart';
import 'package:corbado_demo/services/auth_service.dart';
import 'package:corbado_demo/services/corbado_service.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

initLocator() {
  const corbadoProjectID = String.fromEnvironment('PROJECT_ID');

  getIt.registerSingleton<CorbadoAuth>(CorbadoAuth(corbadoProjectID));
  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerSingleton(CorbadoService(corbadoProjectID));
}
