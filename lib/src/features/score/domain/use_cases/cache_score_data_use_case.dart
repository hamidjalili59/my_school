import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';

class CacheScoreDataUseCase
    implements UseCase<ScoreFailure, void, tuple.Tuple1<List<Score>>> {
  const CacheScoreDataUseCase(this.repo);

  final ScoreRepository repo;

  @override
  Future<Either<ScoreFailure, void>> call({tuple.Tuple1<List<Score>>? param}) =>
      (param == null)
          ? Future.value(left(const ScoreFailure.nullParam()))
          : repo.cacheScoresData(scores: param.value1);
}
