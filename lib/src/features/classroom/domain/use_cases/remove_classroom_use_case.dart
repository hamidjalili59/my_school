import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_success_response.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/core/models/use_case.dart';

class RemoveClassroomUseCase
    implements
        UseCase<ClassroomFailure, ClassroomSuccessResponse, tuple.Tuple1<int>> {
  const RemoveClassroomUseCase(this.repo);

  final ClassroomRepository repo;

  @override
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> call(
          {tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const ClassroomFailure.nullParam()))
          : repo.removeClassroom(classroomId: param.value1);
}
