import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_success_response.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/core/models/use_case.dart';

class UpdateClassroomUseCase
    implements
        UseCase<ClassroomFailure, ClassroomSuccessResponse,
            tuple.Tuple2<int, String>> {
  const UpdateClassroomUseCase(this.repo);

  final ClassroomRepository repo;

  @override
  Future<Either<ClassroomFailure, ClassroomSuccessResponse>> call(
          {tuple.Tuple2<int, String>? param}) =>
      (param == null)
          ? Future.value(left(const ClassroomFailure.nullParam()))
          : repo.updateClassroom(
              classroomId: param.value1, classroomName: param.value2);
}
