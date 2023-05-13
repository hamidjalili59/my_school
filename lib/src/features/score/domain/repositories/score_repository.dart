import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_get_response.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';
import 'package:my_school/src/features/score/domain/models/score_success_response.dart';

abstract class ScoreRepository {
  //
  Future<Either<ScoreFailure, ScoreSuccessResponse>> addScore({
    required List<Score> scores,
    required int classId,
  });
  //
  Future<Either<ScoreFailure, ScoreSuccessResponse>> updateScore({
    required int scoreId,
    required int classId,
    required String scoreDescription,
    required double grade,
  });
  //
  Future<Either<ScoreFailure, ScoreGetResponse>> getScores(
      {required int studentId});
  //
  Future<Either<ScoreFailure, ScoreSuccessResponse>> removeScore(
      {required int gradeId});
  //
  Future<Either<ScoreFailure, void>> cacheScoresData({
    required List<Score> scores,
  });
  //
  Future<Either<ScoreFailure, ScoreGetResponse>> getCachedScoreData();
  //
}
