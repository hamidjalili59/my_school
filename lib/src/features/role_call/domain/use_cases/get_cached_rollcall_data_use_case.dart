import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_get_response.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';

class GetCachedRollcallDataUseCase implements UseCase<RollcallFailure, RollcallGetResponse, tuple.Tuple0> {
  const GetCachedRollcallDataUseCase(this.repo);

  final RollcallRepository repo;

  @override
  Future<Either<RollcallFailure, RollcallGetResponse>> call({tuple.Tuple0? param}) => (param == null)
      ? Future.value(left(const RollcallFailure.nullParam()))
      : repo.getCachedRollcallData();
}
