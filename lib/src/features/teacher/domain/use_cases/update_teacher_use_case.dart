import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/teacher/domain/failure/teacher_failure.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_success_response.dart';
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart';

class UpdateTeacherUseCase
    implements UseCase<TeacherFailure, TeacherSuccessResponse, tuple.Tuple3<String,int,double>> {
  const UpdateTeacherUseCase(this.repo);

  final TeacherRepository repo;

  @override
  Future<Either<TeacherFailure, TeacherSuccessResponse>> call(
          {tuple.Tuple3<String,int,double>? param}) =>
      (param == null)
          ? Future.value(left(const TeacherFailure.nullParam()))
          : repo.updateTeacher(
              name: param.value1,
              teacherId: param.value2,
              phoneNumber: param.value3);
}
