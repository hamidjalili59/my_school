import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/classroom/domain/failure/classroom_failure.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_get_response.dart';
import 'package:my_school/src/features/classroom/domain/repositories/classroom_repository.dart';
import 'package:my_school/src/features/core/models/use_case.dart';

class GetTeacherClassroomsUseCase
    implements
        UseCase<ClassroomFailure, ClassroomGetResponse,
            tuple.Tuple2<int, int>> {
  const GetTeacherClassroomsUseCase(this.repo);

  final ClassroomRepository repo;

  @override
  Future<Either<ClassroomFailure, ClassroomGetResponse>> call(
          {tuple.Tuple2<int, int>? param}) =>
      (param == null)
          ? Future.value(left(const ClassroomFailure.nullParam()))
          : repo.getTeacherClassrooms(
              schoolId: param.value1, teacherId: param.value2);
}
