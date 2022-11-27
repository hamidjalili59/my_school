import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/failure/student_failure.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/repositories/student_repository.dart';

class CacheStudentDataUseCase
    implements UseCase<StudentFailure, void, tuple.Tuple1<List<Student>>> {
  const CacheStudentDataUseCase(this.repo);

  final StudentRepository repo;

  @override
  Future<Either<StudentFailure, void>> call(
          {tuple.Tuple1<List<Student>>? param}) =>
      (param == null)
          ? Future.value(left(const StudentFailure.nullParam()))
          : repo.cacheStudentsData(students: param.value1);
}
