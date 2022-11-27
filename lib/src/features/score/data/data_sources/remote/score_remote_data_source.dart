import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

abstract class ScoreRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addScore({
    required List<Score> scores,
    required int classId,
  });

  Future<Either<DioError, Response<Map<String, dynamic>>>> getScores(
      {required int classId, required double phoneNumber});

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
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'scores': scores,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getScores(
      {required int classId, required double phoneNumber}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateScore({
    required int scoreId,
    required int classId,
    required String scoreDescription,
    required double grade,
  }) =>
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'score_id': scoreId,
        'class_id': classId,
        'score_description': scoreDescription,
        'grade': grade,
      });
}
