import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_get_response.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';

class GetCachedScoreDataUseCase
    implements UseCase<ScoreFailure, ScoreGetResponse,tuple.Tuple0 > {
  const GetCachedScoreDataUseCase(this.repo);

  final ScoreRepository repo;

  @override
  Future<Either<ScoreFailure, ScoreGetResponse>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const ScoreFailure.nullParam()))
          : repo.getCachedScoreData();
}
