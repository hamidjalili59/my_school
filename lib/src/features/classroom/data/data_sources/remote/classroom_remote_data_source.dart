import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/classroom/data/data_sources/remote/classroom_end_points.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/injectable/injectable.dart';

abstract class ClassroomRemoteDataSource {
  Future<Either<DioException, Response<Map<String, dynamic>>>> addClass(
      {required Classroom classroom});

  Future<Either<DioException, Response<Map<String, dynamic>>>> getClasses(
      {required int schoolId});
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getTeacherClasses({required int schoolId, required int teacherId});

  Future<Either<DioException, Response<Map<String, dynamic>>>> removeClass(
      {required int classId});

  Future<Either<DioException, Response<Map<String, dynamic>>>> updateClass({
    required Classroom classroom,
  });
}

//

class ClassroomRemoteDataSourceImpl implements ClassroomRemoteDataSource {
  ClassroomRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> addClass(
          {required Classroom classroom}) =>
      apiService.postMethod<Map<String, dynamic>>(
          '${GeneralConstants.host}api/v1/Classes',
          body: {
            "school_ID": classroom.schoolId,
            "class_Name": classroom.className,
          });

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> getClasses(
      {required int schoolId}) {
    return apiService.getMethod(
      '${GeneralConstants.host}api/v1/Classes/$schoolId',
    );
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>>
      getTeacherClasses({required int schoolId, required int teacherId}) {
    return apiService.getMethod(
      '${GeneralConstants.host}${ClassroomEndpoints.getTeacherClassLink}$schoolId?teacherId=$teacherId',
    );
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> removeClass(
      {required int classId}) {
    return apiService.deleteMethod(GeneralConstants.host +
        ClassroomEndpoints.deleteLink +
        classId.toString());
  }

  @override
  Future<Either<DioException, Response<Map<String, dynamic>>>> updateClass(
          {required Classroom classroom}) =>
      apiService.putMethod<Map<String, dynamic>>(
          GeneralConstants.host +
              ClassroomEndpoints.editLink +
              classroom.classID.toString(),
          body: {
            'school_ID': int.parse(getIt.get<OtpHandshakeResponse>().token),
            'class_Name': classroom.className,
          });
}
