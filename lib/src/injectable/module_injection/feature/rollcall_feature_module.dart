import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/role_call/data/data_sources/local/rollcall_local_data_source.dart';
import 'package:my_school/src/features/role_call/data/data_sources/remote/rollcall_remote_data_source.dart';
import 'package:my_school/src/features/role_call/data/repositories/rollcall_repository_impl.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/add_rollcall_use_case.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/cache_rollcall_data_use_case.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/get_cached_rollcall_data_use_case.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/get_rollcalls_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class RollcallFeatureModule {
  RollcallRemoteDataSource get remoteDS => RollcallRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  RollcallLocalDataSource get localDS => RollcallLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  RollcallRepository get repo => RollcallRepositoryImpl(remoteDS, localDS);

  AddRollcallUseCase get getRollcallUseCase => AddRollcallUseCase(repo);
  CacheRollcallDataUseCase get cacheRollcallDataUseCase =>
      CacheRollcallDataUseCase(repo);
  GetCachedRollcallDataUseCase get getCachedRollcallDataUseCase =>
      GetCachedRollcallDataUseCase(repo);
  GetRollCallsUseCase get getRollcallsUseCase => GetRollCallsUseCase(repo);
}
