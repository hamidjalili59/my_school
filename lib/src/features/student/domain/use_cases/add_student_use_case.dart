import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/models/student_success_response.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';

class AddStudentUseCase
    implements
        UseCase<StudentFailure, StudentSuccessResponse,
            tuple.Tuple2<Student, String>> {
  const AddStudentUseCase(this.repo);

  final StudentRepository repo;

  @override
  Future<Either<StudentFailure, StudentSuccessResponse>> call(
          {tuple.Tuple2<Student, String>? param}) =>
      (param == null)
          ? Future.value(left(const StudentFailure.nullParam()))
          : repo.addStudent(student: param.value1, parentName: param.value2);
}
