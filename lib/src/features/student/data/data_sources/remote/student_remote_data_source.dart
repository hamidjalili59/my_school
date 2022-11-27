import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';

abstract class StudentRemoteDataSource {
  Future<Either<DioError, Response<Map<String, dynamic>>>> addStudent(
      {required Student student});

  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudents(
      {required int classId});

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
          {required Student student}) =>
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'student': student,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getStudents(
      {required int classId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeStudent(
      {required int studentId}) {
    return apiService.deleteMethod('https://www.asatic.ir/', body: {
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
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'student_id': studentId,
        'class_id': classId,
        'name': name,
        'phone_number': phoneNumber,
      });
}
