import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/core/models/use_case.dart';

class RemoveClassroomUseCase
    implements UseCase<ClassroomFailure, void, tuple.Tuple1<int>> {
  const RemoveClassroomUseCase(this.repo);

  final ClassroomRepository repo;

  @override
  Future<Either<ClassroomFailure, void>> call({tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const ClassroomFailure.nullParam()))
          : repo.removeClassroom(classroomId: param.value1);
}
