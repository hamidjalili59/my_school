import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_get_response.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';

abstract class StudentRepository {
  //
  Future<Either<StudentFailure, StudentSuccessResponse>> addStudent(
      {required Student student});
  //
  Future<Either<StudentFailure, StudentSuccessResponse>> updateStudent({
    required int classId,
    required int studentId,
    required String name,
    required double phoneNumber,
  });
  //
  Future<Either<StudentFailure, void>> removeStudent({
    required int studentId,
  });
  //
  Future<Either<StudentFailure, StudentGetResponse>> getStudents({
    required int classId,
  });
  //
  Future<Either<StudentFailure, void>> cacheStudentsData({
    required List<Student> students,
  });
  //
  Future<Either<StudentFailure, StudentGetResponse>>
      getCachedStudentData();
  //
}
