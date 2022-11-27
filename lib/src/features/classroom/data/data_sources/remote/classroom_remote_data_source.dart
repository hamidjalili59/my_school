import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class ClassroomRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addClass(
      {required Classroom classroom});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getClasses(
      {required int schoolId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeClass(
      {required int classId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateClass({
    required int classroomId,
    required String classroomName,
  });
}

//

class ClassroomRemoteDataSourceImpl implements ClassroomRemoteDataSource {
  ClassroomRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addClass(
          {required Classroom classroom}) =>
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'classroom': classroom,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getClasses(
      {required int schoolId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeClass(
      {required int classId}) {
    return apiService.deleteMethod('https://www.asatic.ir/', body: {
      'course_id': classId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateClass(
          {required int classroomId, required String classroomName}) =>
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'course_id': classroomId,
        'course_name': classroomName,
      });
}
