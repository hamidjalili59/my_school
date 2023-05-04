import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';

abstract class TeacherRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addTeacher(
      {required Teacher teacher});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getTeachers(
      {required int schoolId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeTeacher(
      {required int teacherId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateTeacher({
    required String name,
    required int teacherId,
    required double phoneNumber,
  });
}

//

class TeacherRemoteDataSourceImpl implements TeacherRemoteDataSource {
  TeacherRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addTeacher(
          {required Teacher teacher}) =>
      apiService.postMethod<Map<String, dynamic>>(
          'http://myschool.asatic.ir/api/v1/Teacher',
          body: {
            'name': teacher.basicInfo.name,
            'phoneNumber': teacher.basicInfo.phoneNumber,
            'school_ID': int.parse(getIt.get<OtpHandshakeResponse>().token),
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getTeachers(
      {required int schoolId}) {
    return apiService.getMethod(
      'http://myschool.asatic.ir/api/v1/Teacher/$schoolId',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeTeacher(
      {required int teacherId}) {
    return apiService
        .deleteMethod('http://myschool.asatic.ir/api/v1/Teacher/', body: {
      'teacher_id': teacherId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateTeacher({
    required String name,
    required int teacherId,
    required double phoneNumber,
  }) =>
      apiService.putMethod<Map<String, dynamic>>(
          'http://myschool.asatic.ir/api/v1/Teacher/$teacherId',
          body: {
            'name': name,
            'phoneNumber': phoneNumber,
          });
}
