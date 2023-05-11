import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/mediator_tc/domain/failure/mediator_failure.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_success_response.dart';
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart';

class GetMediatorUseCase
    implements
        UseCase<MediatorFailure, MediatorSuccessResponse, tuple.Tuple1<int>> {
  const GetMediatorUseCase(this.repo);

  final MediatorRepository repo;

  @override
  Future<Either<MediatorFailure, MediatorSuccessResponse>> call(
          {tuple.Tuple1<int>? param}) =>
      (param == null)
          ? Future.value(left(const MediatorFailure.nullParam()))
          : repo.getMediators(classId: param.value1);
}
