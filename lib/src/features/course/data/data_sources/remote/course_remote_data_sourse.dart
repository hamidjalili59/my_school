import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class CourseRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addCourse(
      {required Course course});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getCourses(
      {required int schoolId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeCourse(
      {required int courseId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateCourse(
      {required int courseId, required String courseName});
}

//

class CourseRemoteDataSourceImpl implements CourseRemoteDataSource {
  CourseRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addCourse(
          {required Course course}) =>
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'course': course,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getCourses(
      {required int schoolId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeCourse(
      {required int courseId}) {
    return apiService.deleteMethod('https://www.asatic.ir/', body: {
      'course_id': courseId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateCourse(
          {required int courseId, required String courseName}) =>
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'course_id': courseId,
        'course_name': courseName,
      });
}
