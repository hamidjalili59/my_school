import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_get_response.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';

class GetRollCallsUseCase
    implements
        UseCase<RollcallFailure, RollcallGetResponse, tuple.Tuple1<int>> {
  const GetRollCallsUseCase(this.repo);

  final RollcallRepository repo;

  @override
  Future<Either<RollcallFailure, RollcallGetResponse>> call(
          {tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const RollcallFailure.nullParam()))
          : repo.getRollcalls(studentId: param.value1);
}
