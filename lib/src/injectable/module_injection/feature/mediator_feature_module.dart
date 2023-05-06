import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/mediator_tc/data/data_sources/local/mediator_local_data_source.dart';
import 'package:my_school/src/features/mediator_tc/data/data_sources/remote/mediator_remote_data_source.dart';
import 'package:my_school/src/features/mediator_tc/data/repositories/mediator_repository_impl.dart';
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/add_mediator_use_case.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/cache_mediator_data_use_case.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/get_cached_mediator_data_use_case.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/get_mediators_use_case.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/remove_mediator_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class MediatorFeatureModule {
  MediatorRemoteDataSource get remoteDS => MediatorRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  MediatorLocalDataSource get localDS => MediatorLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  MediatorRepository get repo => MediatorRepositoryImpl(remoteDS, localDS);

  AddMediatorUseCase get getMediatorUseCase => AddMediatorUseCase(repo);
  CacheMediatorDataUseCase get cacheMediatorDataUseCase =>
      CacheMediatorDataUseCase(repo);
  GetCachedMediatorDataUseCase get getCachedMediatorDataUseCase =>
      GetCachedMediatorDataUseCase(repo);
  GetMediatorUseCase get getMediatorsUseCase => GetMediatorUseCase(repo);
  RemoveMediatorUseCase get removeMediatorUseCase =>
      RemoveMediatorUseCase(repo);
}
