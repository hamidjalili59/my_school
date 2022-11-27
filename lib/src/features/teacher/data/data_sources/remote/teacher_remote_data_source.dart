import 'package:api_service/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';

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
      apiService
          .postMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'teacher': teacher,
      });

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> getTeachers(
      {required int schoolId}) {
    return apiService.getMethod(
      'https://www.asatic.ir/',
    );
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> removeTeacher(
      {required int teacherId}) {
    return apiService.deleteMethod('https://www.asatic.ir/', body: {
      'teacher_id': teacherId,
    });
  }

  @override
  Future<Either<DioError, Response<Map<String, dynamic>>>> updateTeacher({
    required String name,
    required int teacherId,
    required double phoneNumber,
  }) =>
      apiService
          .putMethod<Map<String, dynamic>>('https://www.asatic.ir/', body: {
        'teacher_id': teacherId,
        'phone_number': phoneNumber,
        'name': name,
      });
}
