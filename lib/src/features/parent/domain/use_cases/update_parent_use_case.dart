import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_success_response.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';

class UpdateParentUseCase
    implements
        UseCase<ParentFailure, ParentSuccessResponse,
            tuple.Tuple4<String, int, double, int>> {
  const UpdateParentUseCase(this.repo);

  final ParentRepository repo;

  @override
  Future<Either<ParentFailure, ParentSuccessResponse>> call({tuple.Tuple4<String, int, double, int>? param}) =>
      (param == null)
          ? Future.value(left(const ParentFailure.nullParam()))
          : repo.updateParent(
              name: param.value1,
              schoolId: param.value2,
              phoneNumber: param.value3,
              parentId: param.value4);
}
