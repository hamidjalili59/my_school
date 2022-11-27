import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_success_response.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';

class AddRollcallUseCase
    implements
        UseCase<RollcallFailure, RollcallSuccessResponse, tuple.Tuple1<List<Rollcall>>> {
  const AddRollcallUseCase(this.repo);

  final RollcallRepository repo;

  @override
  Future<Either<RollcallFailure, RollcallSuccessResponse>> call(
          {tuple.Tuple1<List<Rollcall>>? param}) =>
      (param == null)
          ? Future.value(left(const RollcallFailure.nullParam()))
          : repo.addRollcall(rollcall: param.value1);
}
