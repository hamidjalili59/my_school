import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/course/data/data_sources/remote/course_end_points.dart';
import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

abstract class CourseRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addCourse({
    required String courseName,
    required int schoolId,
  });

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
  Future<Either<DioError, Response<Map<String, dynamic>>>> addCourse({
    required String courseName,
    required int schoolId,
  }) =>
      apiService.postMethod<Map<String, dynamic>>(
          GeneralConstants.host + CourseEndpoints.addLink,
          body: {
            'course_Name': courseName,
            'school_ID': schoolId,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getCourses(
      {required int schoolId}) {
    return apiService.getMethod(
      GeneralConstants.host + CourseEndpoints.getLink + schoolId.toString(),
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeCourse(
      {required int courseId}) {
    return apiService.deleteMethod(GeneralConstants.host, body: {
      'course_id': courseId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateCourse(
          {required int courseId, required String courseName}) =>
      apiService.putMethod<Map<String, dynamic>>(GeneralConstants.host, body: {
        'course_id': courseId,
        'course_name': courseName,
      });
}
