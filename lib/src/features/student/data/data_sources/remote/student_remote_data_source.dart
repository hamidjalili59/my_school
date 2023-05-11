import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/student/data/data_sources/remote/student_end_points.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/injectable/injectable.dart';

abstract class StudentRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addStudent(
      {required Student student, required String parentName});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudents(
      {required int classId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudentsParent(
      {required double phonenumber});

  Future<Either<DioError, Response<Map<String, dynamic>>>> removeStudent(
      {required int studentId});

  Future<Either<DioError, Response<Map<String, dynamic>>>> updateStudent({
    required int classId,
    required int studentId,
    required String name,
    required double phoneNumber,
  });
}

//

class StudentRemoteDataSourceImpl implements StudentRemoteDataSource {
  StudentRemoteDataSourceImpl(this.apiService);
  final ApiService apiService;

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> addStudent(
          {required Student student, required String parentName}) =>
      apiService.postMethod<Map<String, dynamic>>(
          GeneralConstants.host + StudentEndpoints.addLink,
          body: {
            'name': student.basicInfo!.name,
            'phoneNumber': student.basicInfo!.phoneNumber,
            'class_ID': student.classId,
            'parent_Name': parentName,
            'school_ID': getIt.get<Classroom>().schoolId,
          });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudents(
      {required int classId}) {
    return apiService.getMethod(
      GeneralConstants.host + StudentEndpoints.getLink + classId.toString(),
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeStudent(
      {required int studentId}) {
    return apiService.deleteMethod(GeneralConstants.host, body: {
      'student_id': studentId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateStudent({
    required int classId,
    required int studentId,
    required String name,
    required double phoneNumber,
  }) =>
      apiService.putMethod<Map<String, dynamic>>(GeneralConstants.host, body: {
        'student_id': studentId,
        'class_id': classId,
        'name': name,
        'phone_number': phoneNumber,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudentsParent(
      {required double phonenumber}) {
    return apiService.getMethod(
      GeneralConstants.host +
          StudentEndpoints.getParentLink +
          phonenumber.toString(),
    );
  }
}
