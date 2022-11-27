import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_get_response.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';

class GetCachedParentDataUseCase
    implements UseCase<ParentFailure, ParentGetResponse,tuple.Tuple0 > {
  const GetCachedParentDataUseCase(this.repo);

  final ParentRepository repo;

  @override
  Future<Either<ParentFailure, ParentGetResponse>> call({tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const ParentFailure.nullParam()))
          : repo.getCachedParentData();
}
