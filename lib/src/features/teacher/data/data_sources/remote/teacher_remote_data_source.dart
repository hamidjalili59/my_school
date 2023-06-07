import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/teacher/data/data_sources/remote/teacher_end_points.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';

abstract class TeacherRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>> addTeacher(
      {required Teacher teacher});

  Future<Either<DioException, Response<Map<String, dynamic>>>> getTeachers(
      {required int schoolId});

  Future<Either<DioException, Response<Map<String, dynamic>>>> removeTeacher(
      {required int teacherId});

  Future<Either<DioException, Response<Map<String, dynamic>>>> updateTeacher({
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
  Future<Either<DioException, Response<Map<String, dynamic>>>> addTeacher(
          {required Teacher teacher}) =>
      apiService.postMethod<Map<String, dynamic>>(
          '${GeneralConstants.host}api/v1/Teacher',
          body: {
            'name': teacher.basicInfo!.name,
            'phoneNumber': teacher.basicInfo!.phoneNumber,
            'school_ID': int.parse(getIt.get<OtpHandshakeResponse>().token),
          });

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> getTeachers(
      {required int schoolId}) {
    return apiService.getMethod(
      '${GeneralConstants.host}api/v1/Teacher/$schoolId',
    );
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> removeTeacher(
      {required int teacherId}) {
    return apiService.deleteMethod(GeneralConstants.host +
        TeacherEndpoints.deleteLink +
        teacherId.toString());
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> updateTeacher({
    required String name,
    required int teacherId,
    required double phoneNumber,
  }) =>
      apiService.putMethod<Map<String, dynamic>>(
          '${GeneralConstants.host}api/v1/Teacher/$teacherId',
          body: {
            'name': name,
            'phoneNumber': phoneNumber,
          });
}
