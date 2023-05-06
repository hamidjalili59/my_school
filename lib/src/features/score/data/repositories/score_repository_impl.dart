import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/score/data/data_sources/local/score_local_data_source.dart';
import 'package:my_school/src/features/score/data/data_sources/remote/score_remote_data_source.dart';
import 'package:my_school/src/features/score/domain/failure/score_failure.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';
import 'package:my_school/src/features/score/domain/models/score_success_response.dart';
import 'package:my_school/src/features/score/domain/repositories/score_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/score/domain/models/score_get_response.dart';

class ScoreRepositoryImpl extends ScoreRepository {
  final ScoreRemoteDataSource _remoteDS;
  final ScoreLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  ScoreRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<ScoreFailure, ScoreSuccessResponse>> addScore(
      {required List<Score> scores, required int classId}) {
    return _remoteDS.addScore(scores: scores, classId: classId).then(
          (value) => value.fold(
            (l) =>
                left<ScoreFailure, ScoreSuccessResponse>(ScoreFailure.api(l)),
            (r) async {
              final scoreAddSuccessResponse = ScoreSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ScoreFailure, ScoreSuccessResponse>(
                scoreAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ScoreFailure, void>> cacheScoresData(
      {required List<Score> scores}) {
    return _localDS.cacheData(fieldKey: 'scores', value: scores).then(
          (value) => value.fold(
            (l) => left<ScoreFailure, void>(ScoreFailure.database(l)),
            (r) => right<ScoreFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<ScoreFailure, ScoreGetResponse>> getCachedScoreData() {
    return _localDS.getCachedData(fieldKey: 'scores').then(
          (value) => value.fold(
            (l) =>
                left<ScoreFailure, ScoreGetResponse>(ScoreFailure.database(l)),
            (r) => right<ScoreFailure, ScoreGetResponse>(
                ScoreGetResponse(scores: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<ScoreFailure, ScoreGetResponse>> getScores(
      {required int classId, required double phoneNumber}) {
    return _remoteDS.getScores(classId: classId, phoneNumber: phoneNumber).then(
          (value) => value.fold(
            (l) => left<ScoreFailure, ScoreGetResponse>(
              ScoreFailure.api(l),
            ),
            (r) async {
              final scoresDataFromServer = ScoreGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ScoreFailure, ScoreGetResponse>(
                scoresDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ScoreFailure, ScoreSuccessResponse>> updateScore({
    required int scoreId,
    required int classId,
    required String scoreDescription,
    required double grade,
  }) {
    return _remoteDS
        .updateScore(
          classId: classId,
          grade: grade,
          scoreDescription: scoreDescription,
          scoreId: scoreId,
        )
        .then(
          (value) => value.fold(
            (l) => left<ScoreFailure, ScoreSuccessResponse>(
              ScoreFailure.api(l),
            ),
            (r) async {
              final updateScoreOnServer = ScoreSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ScoreFailure, ScoreSuccessResponse>(
                updateScoreOnServer,
              );
            },
          ),
        );
  }
}
