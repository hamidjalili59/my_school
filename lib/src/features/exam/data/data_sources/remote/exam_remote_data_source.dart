import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';

abstract class ExamRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addExam(
      {required Exam exam});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getExams(
      {required int classId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getSingleExam(
      {required int examId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeExam(
      {required int examId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateExam({
    required int examId,
    required bool isDone,
    required String examDescription,
  });
}

//

class ExamRemoteDataSourceImpl implements ExamRemoteDataSource {
  ExamRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addExam(
          {required Exam exam}) =>
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'exam': exam,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getExams(
      {required int classId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getSingleExam(
      {required int examId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeExam(
      {required int examId}) {
    return apiService.deleteMethod('https://www.asatic.ir/', body: {
      'exam_id': examId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateExam(
          {required int examId,
          required bool isDone,
          required String examDescription}) =>
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'exam_id': examId,
        'isDone': isDone,
        'exam_description': examDescription,
      });
}
