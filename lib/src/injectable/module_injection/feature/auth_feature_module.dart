import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:my_school/src/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:my_school/src/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:my_school/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_school/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
import 'package:my_school/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:my_school/src/features/auth/domain/use_cases/logout_auth_use_case.dart';
import 'package:my_school/src/features/auth/domain/use_cases/otp_handshake_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class AuthFeatureModule {
  AuthRemoteDataSource get remoteDS => AuthRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  AuthLocalDataSource get localDS => AuthLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  AuthRepository get repo => AuthRepositoryImpl(remoteDS, localDS);

  OtpHandshakeUseCase get otpAuthorizaUseCase => OtpHandshakeUseCase(repo);
  // OtpVerifyUseCase get otpVerifyUseCase => OtpVerifyUseCase(repo);
  CacheAuthDataUseCase get cacheAuthDataUseCase => CacheAuthDataUseCase(repo);
  GetCachedAuthDataUseCase get getCacheDataUseCase =>
      GetCachedAuthDataUseCase(repo);
  LogoutAuthDataUseCase get logoutAuthDataUseCase =>
      LogoutAuthDataUseCase(repo);
}
