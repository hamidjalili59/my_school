import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/mediator_tc/domain/failure/mediator_failure.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_add_success_response.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_success_response.dart';

abstract class MediatorRepository {
  //
  Future<Either<MediatorFailure, MediatorAddSuccessResponse>> addMediator(
      {required Mediator mediator, required int courseId});
  //
  Future<Either<MediatorFailure, MediatorAddSuccessResponse>> removeMediator({
    required int mediatorId,
  });
  //
  Future<Either<MediatorFailure, MediatorSuccessResponse>> getMediators({
    required int classId,
  });
  //
  Future<Either<MediatorFailure, void>> cacheMediatorsData({
    required List<Mediator> mediators,
  });
  //
  Future<Either<MediatorFailure, MediatorSuccessResponse>>
      getCachedMediatorData();
  //
}
