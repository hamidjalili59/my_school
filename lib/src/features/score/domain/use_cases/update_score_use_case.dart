import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_success_response.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';

class UpdateScoreUseCase
    implements
        UseCase<ScoreFailure, ScoreSuccessResponse,
            tuple.Tuple4<int, int, double, String>> {
  const UpdateScoreUseCase(this.repo);

  final ScoreRepository repo;

  @override
  Future<Either<ScoreFailure, ScoreSuccessResponse>> call(
          {tuple.Tuple4<int, int, double, String>? param}) =>
      (param == null)
          ? Future.value(left(const ScoreFailure.nullParam()))
          : repo.updateScore(
              scoreId: param.value1,
              classId: param.value2,
              grade: param.value3,
              scoreDescription: param.value4);
}
