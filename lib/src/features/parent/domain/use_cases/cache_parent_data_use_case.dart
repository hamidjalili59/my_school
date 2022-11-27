import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_model/parent.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';

class CacheParentDataUseCase
    implements UseCase<ParentFailure, void, tuple.Tuple1<Parent>> {
  const CacheParentDataUseCase(this.repo);

  final ParentRepository repo;

  @override
  Future<Either<ParentFailure, void>> call({tuple.Tuple1<Parent>? param}) =>
      (param == null)
          ? Future.value(left(const ParentFailure.nullParam()))
          : repo.cacheParentsData(parent: param.value1);
}
