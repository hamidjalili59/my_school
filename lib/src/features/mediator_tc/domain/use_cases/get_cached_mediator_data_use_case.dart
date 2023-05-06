import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/mediator_tc/domain/failure/mediator_failure.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_success_response.dart';
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart';

class GetCachedMediatorDataUseCase
    implements UseCase<MediatorFailure, MediatorSuccessResponse, tuple.Tuple0> {
  const GetCachedMediatorDataUseCase(this.repo);

  final MediatorRepository repo;

  @override
  Future<Either<MediatorFailure, MediatorSuccessResponse>> call(
          {tuple.Tuple0? param}) =>
      (param == null)
          ? Future.value(left(const MediatorFailure.nullParam()))
          : repo.getCachedMediatorData();
}
