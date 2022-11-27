import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_get_response.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';

class GetParentUseCase
    implements UseCase<ParentFailure, ParentGetResponse, tuple.Tuple1<int>> {
  const GetParentUseCase(this.repo);

  final ParentRepository repo;

  @override
  Future<Either<ParentFailure, ParentGetResponse>> call({tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const ParentFailure.nullParam()))
          : repo.getParent(parentId: param.value1);
}
