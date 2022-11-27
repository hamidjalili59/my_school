import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';

class UpdateStudentUseCase
    implements
        UseCase<StudentFailure, StudentSuccessResponse,
            tuple.Tuple4<String, int, double, int>> {
  const UpdateStudentUseCase(this.repo);

  final StudentRepository repo;

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> call(
          {tuple.Tuple4<String, int, double, int>? param}) =>
      (param == null)
          ? Future.value(left(const StudentFailure.nullParam()))
          : repo.updateStudent(
              name: param.value1,
              classId: param.value2,
              phoneNumber: param.value3,
              studentId: param.value4);
}
