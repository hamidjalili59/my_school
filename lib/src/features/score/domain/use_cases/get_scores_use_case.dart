import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_get_response.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';

class GetScoreUseCase
    implements UseCase<ScoreFailure, ScoreGetResponse, tuple.Tuple1<int>> {
  const GetScoreUseCase(this.repo);

  final ScoreRepository repo;

  @override
  Future<Either<ScoreFailure, ScoreGetResponse>> call(
          {tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const ScoreFailure.nullParam()))
          : repo.getScores(studentId: param.value1);
}
