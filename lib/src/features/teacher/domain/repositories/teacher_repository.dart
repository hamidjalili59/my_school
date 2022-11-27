import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/teacher/domain/failure/teacher_failure.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_response.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_success_response.dart';

abstract class TeacherRepository {
  //
  Future<Either<TeacherFailure, TeacherSuccessResponse>> addTeacher(
      {required Teacher teacher});
  //
  Future<Either<TeacherFailure, TeacherSuccessResponse>> updateTeacher({
    required int teacherId,
    required double phoneNumber,
    required String name,
  });
  //
  Future<Either<TeacherFailure, void>> removeTeacher({
    required int teacherId,
  });
  //
  Future<Either<TeacherFailure, TeacherGetResponse>> getTeachers({
    required int schoolId,
  });
  //
  Future<Either<TeacherFailure, void>> cacheTeachersData({
    required List<Teacher> teachers,
  });
  //
  Future<Either<TeacherFailure, TeacherGetResponse>>
      getCachedTeacherData();
  //
}
