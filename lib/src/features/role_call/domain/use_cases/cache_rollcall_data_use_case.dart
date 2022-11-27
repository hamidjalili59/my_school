import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';

class CacheRollcallDataUseCase
    implements UseCase<RollcallFailure, void, tuple.Tuple1<List<Rollcall>>> {
  const CacheRollcallDataUseCase(this.repo);

  final RollcallRepository repo;

  @override
  Future<Either<RollcallFailure, void>> call({tuple.Tuple1<List<Rollcall>>? param}) =>
      (param == null)
          ? Future.value(left(const RollcallFailure.nullParam()))
          : repo.cacheRollcallsData(rollcalls: param.value1);
}
