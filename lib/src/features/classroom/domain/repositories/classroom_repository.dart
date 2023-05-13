import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_get_response.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_success_response.dart';

abstract class ClassroomRepository {
  //
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> addClassroom(
      {required Classroom classroom});
  //
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> updateClassroom({
    required Classroom classroom,
  });
  //
  Future<Either<ClassroomFailure, void>> removeClassroom({
    required int classroomId,
  });
  //
  Future<Either<ClassroomFailure, ClassroomGetResponse>> getClassrooms({
    required int schoolId,
  });
  Future<Either<ClassroomFailure, ClassroomGetResponse>> getTeacherClassrooms({
    required int teacherId,
    required int schoolId,
  });
  //
  Future<Either<ClassroomFailure, void>> cacheClassroomsData({
    required List<Classroom> classrooms,
  });
  //
  Future<Either<ClassroomFailure, ClassroomGetResponse>>
      getCachedClassroomData();
  //
}
