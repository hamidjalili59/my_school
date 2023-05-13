import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/mediator_tc/domain/failure/mediator_failure.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_add_success_response.dart';
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart';

class AddMediatorUseCase
    implements
        UseCase<MediatorFailure, MediatorAddSuccessResponse,
            tuple.Tuple2<Mediator, int>> {
  const AddMediatorUseCase(this.repo);

  final MediatorRepository repo;

  @override
  Future<Either<MediatorFailure, MediatorAddSuccessResponse>> call(
          {tuple.Tuple2<Mediator, int>? param}) =>
      (param == null)
          ? Future.value(left(const MediatorFailure.nullParam()))
          : repo.addMediator(mediator: param.value1, courseId: param.value2);
}
