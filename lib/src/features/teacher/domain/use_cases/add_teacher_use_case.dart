import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/teacher/domain/failure/teacher_failure.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_success_response.dart';
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart';

class AddTeacherUseCase
    implements UseCase<TeacherFailure, TeacherSuccessResponse, tuple.Tuple1<Teacher>> {
  const AddTeacherUseCase(this.repo);

  final TeacherRepository repo;

  @override
  Future<Either<TeacherFailure, TeacherSuccessResponse>> call(
          {tuple.Tuple1<Teacher>? param}) =>
      (param == null)
          ? Future.value(left(const TeacherFailure.nullParam()))
          : repo.addTeacher(teacher: param.value1);
}
