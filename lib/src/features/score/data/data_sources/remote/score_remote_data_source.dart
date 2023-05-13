import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/score/data/data_sources/remote/score_end_points.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

abstract class ScoreRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addScore({
    required List<Score> scores,
    required int classId,
  });

  Future<Either<DioError, Response<Map<String, dynamic>>>> getScores(
      {required int studentId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> deleteScore(
      {required int gradeId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateScore({
    required int scoreId,
    required int classId,
    required String scoreDescription,
    required double grade,
  });
}

//

class ScoreRemoteDataSourceImpl implements ScoreRemoteDataSource {
  ScoreRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addScore({
    required List<Score> scores,
    required int classId,
  }) =>
      apiService.postMethod<Map<String, dynamic>>(
          GeneralConstants.host + ScoreEndpoints.addLink,
          body: {
            'scores': scores,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getScores(
      {required int studentId}) {
    return apiService.getMethod(
      GeneralConstants.host + ScoreEndpoints.getLink + studentId.toString(),
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateScore({
    required int scoreId,
    required int classId,
    required String scoreDescription,
    required double grade,
  }) =>
      apiService.putMethod<Map<String, dynamic>>(GeneralConstants.host, body: {
        'score_id': scoreId,
        'class_id': classId,
        'score_description': scoreDescription,
        'grade': grade,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> deleteScore(
      {required int gradeId}) {
    return apiService.deleteMethod(
        GeneralConstants.host + ScoreEndpoints.deleteLink + gradeId.toString());
  }
}
