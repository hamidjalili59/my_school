import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';

class UpdateStudentUseCase
    implements
        UseCase<StudentFailure, StudentSuccessResponse, tuple.Tuple1<Student>> {
  const UpdateStudentUseCase(this.repo);

  final StudentRepository repo;

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> call(
          {tuple.Tuple1<Student>? param}) =>
      (param == null)
          ? Future.value(left(const StudentFailure.nullParam()))
          : repo.updateStudent(
              student: param.value1,
            );
}
