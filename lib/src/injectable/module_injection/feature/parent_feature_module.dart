import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/parent/data/data_sources/local/parent_local_data_source.dart';
import 'package:my_school/src/features/parent/data/data_sources/remote/parent_remote_data_source.dart';
import 'package:my_school/src/features/parent/data/repositories/parent_repository_impl.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';
import 'package:my_school/src/features/parent/domain/use_cases/cache_parent_data_use_case.dart';
import 'package:my_school/src/features/parent/domain/use_cases/get_cached_parent_data_use_case.dart';
import 'package:my_school/src/features/parent/domain/use_cases/get_parent_use_case.dart';
import 'package:my_school/src/features/parent/domain/use_cases/update_parent_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class ParentFeatureModule {
  ParentRemoteDataSource get remoteDS => ParentRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  ParentLocalDataSource get localDS => ParentLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  ParentRepository get repo => ParentRepositoryImpl(remoteDS, localDS);

  CacheParentDataUseCase get cacheParentDataUseCase =>
      CacheParentDataUseCase(repo);
  GetCachedParentDataUseCase get getCachedParentDataUseCase =>
      GetCachedParentDataUseCase(repo);
  GetParentUseCase get getParentsUseCase => GetParentUseCase(repo);

  UpdateParentUseCase get updateParentUseCase => UpdateParentUseCase(repo);
}
