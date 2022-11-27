import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/teacher/domain/failure/teacher_failure.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_response.dart';
import 'package:my_school/src/features/teacher/domain/repositories/teacher_repository.dart';

class GetCachedTeacherDataUseCase
    implements UseCase<TeacherFailure, TeacherGetResponse, tuple.Tuple0> {
  const GetCachedTeacherDataUseCase(this.repo);

  final TeacherRepository repo;

  @override
  Future<Either<TeacherFailure, TeacherGetResponse>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const TeacherFailure.nullParam()))
          : repo.getCachedTeacherData();
}
