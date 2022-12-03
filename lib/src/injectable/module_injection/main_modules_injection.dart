import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/core/interceptors/auth_header_suplier.dart';
import 'package:my_school/src/core/interceptors/request_interceptor.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/injectable/injectable.dart';

class MainModulesInjection {
  MainModulesInjection() {
    getIt.registerSingleton<Dio>(Dio());
    getIt.registerLazySingleton<ApiService>(
      () => ApiServiceImpl(
        interceptors: [getIt.get<RequestInterceptor>()],
        dio: getIt.get<Dio>(),
      ),
    );
    getIt.registerLazySingleton<DatabaseService>(
      () => DatabaseServiceImpl(),
    );
    getIt.registerLazySingleton<AppRouter>(() => AppRouter());
    getIt.registerLazySingleton<AuthHeaderSupplier>(() => AuthHeaderSupplier());
  }

  //
  Future initDatabase() async =>
      await getIt.get<DatabaseService>().initialize();

  Future registerHiveAdapters() async {
    // ignore: unused_local_variable
    final databaseService = getIt.get<DatabaseService>();
    databaseService.registerAdapter(OtpHandshakeResponseAdapter());
  }
}
