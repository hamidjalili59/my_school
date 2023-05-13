import 'package:api_service/api_service.dart';
import 'package:database_service/database_service.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/score/data/data_sources/local/score_local_data_source.dart';
import 'package:my_school/src/features/score/data/data_sources/remote/score_remote_data_source.dart';
import 'package:my_school/src/features/score/data/repositories/score_repository_impl.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';
import 'package:my_school/src/features/score/domain/use_cases/add_score_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/cache_score_data_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/get_cached_score_data_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/get_scores_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/remove_score_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/update_score_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

@module
abstract class ScoreFeatureModule {
  ScoreRemoteDataSource get remoteDS => ScoreRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      );
  ScoreLocalDataSource get localDS => ScoreLocalDataSource(
        getIt.get<DatabaseService>(),
      );

  ScoreRepository get repo => ScoreRepositoryImpl(remoteDS, localDS);

  AddScoreUseCase get getScoreUseCase => AddScoreUseCase(repo);
  CacheScoreDataUseCase get cacheScoreDataUseCase =>
      CacheScoreDataUseCase(repo);
  GetCachedScoreDataUseCase get getCachedScoreDataUseCase =>
      GetCachedScoreDataUseCase(repo);
  GetScoreUseCase get getScoresUseCase => GetScoreUseCase(repo);
  UpdateScoreUseCase get updateScoreUseCase => UpdateScoreUseCase(repo);
  RemoveScoreUseCase get removeScoreUseCase => RemoveScoreUseCase(repo);
}
