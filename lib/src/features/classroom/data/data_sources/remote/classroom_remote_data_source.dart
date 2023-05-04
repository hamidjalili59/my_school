import 'package:my_school/src/config/constants/general_constants.dart';
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
      apiService.postMethod<Map<String, dynamic>>(
          '${GeneralConstants.host}api/v1/Classes',
          body: {
            "school_ID": classroom.schoolId,
            "class_Name": classroom.className,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getClasses(
      {required int schoolId}) {
    return apiService.getMethod(
      '${GeneralConstants.host}api/v1/Classes/$schoolId',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeClass(
      {required int classId}) {
    return apiService.deleteMethod(GeneralConstants.host, body: {
      'course_id': classId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateClass(
          {required int classroomId, required String classroomName}) =>
      apiService.putMethod<Map<String, dynamic>>(GeneralConstants.host, body: {
        'course_id': classroomId,
        'course_name': classroomName,
      });
}
