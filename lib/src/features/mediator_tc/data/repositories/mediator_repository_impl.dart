import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/mediator_tc/data/data_sources/local/mediator_local_data_source.dart';
import 'package:my_school/src/features/mediator_tc/data/data_sources/remote/mediator_remote_data_source.dart';
import 'package:my_school/src/features/mediator_tc/domain/failure/mediator_failure.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator_success_response.dart';
import 'package:my_school/src/features/mediator_tc/domain/repositories/mediator_repository.dart';

class MediatorRepositoryImpl extends MediatorRepository {
  final MediatorRemoteDataSource _remoteDS;
  final MediatorLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  MediatorRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<MediatorFailure, void>> addMediator(
      {required Mediator mediator, required int courseId}) {
    return _remoteDS.addMediator(mediator: mediator, courseId: courseId).then(
          (value) => value.fold(
            (l) => left<MediatorFailure, MediatorSuccessResponse>(
                MediatorFailure.api(l)),
            (r) async {
              // final mediatorAddSuccessResponse =
              //     MediatorSuccessResponse.fromJson(
              //   BaseResponse.fromJson(r.data ?? {}).payload.isEmpty
              //       ? {'MediatorTC': []}
              //       : BaseResponse.fromJson(r.data ?? {}).payload,
              // );
              return right<MediatorFailure, void>(null
                  // mediatorAddSuccessResponse,
                  );
            },
          ),
        );
  }

  @override
  Future<Either<MediatorFailure, void>> cacheMediatorsData(
      {required List<Mediator> mediators}) {
    return _localDS.cacheData(fieldKey: 'mediators', value: mediators).then(
          (value) => value.fold(
            (l) => left<MediatorFailure, void>(MediatorFailure.database(l)),
            (r) => right<MediatorFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<MediatorFailure, MediatorSuccessResponse>>
      getCachedMediatorData() {
    return _localDS.getCachedData(fieldKey: 'mediators').then(
          (value) => value.fold(
            (l) => left<MediatorFailure, MediatorSuccessResponse>(
                MediatorFailure.database(l)),
            (r) => right<MediatorFailure, MediatorSuccessResponse>(
                MediatorSuccessResponse(mediators: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<MediatorFailure, MediatorSuccessResponse>> getMediators(
      {required int classId}) {
    return _remoteDS.getMediators(classId: classId).then(
          (value) => value.fold(
            (l) => left<MediatorFailure, MediatorSuccessResponse>(
              MediatorFailure.api(l),
            ),
            (r) async {
              final mediatorsDataFromServer = MediatorSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).payload,
              );
              return right<MediatorFailure, MediatorSuccessResponse>(
                mediatorsDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<MediatorFailure, void>> removeMediator(
      {required int mediatorId}) {
    return _remoteDS.removeMediator(mediatorId: mediatorId).then(
          (value) => value.fold(
            (l) => left<MediatorFailure, MediatorSuccessResponse>(
              MediatorFailure.api(l),
            ),
            (r) async {
              final removeMediatorFromServer = MediatorSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<MediatorFailure, MediatorSuccessResponse>(
                removeMediatorFromServer,
              );
            },
          ),
        );
  }
}
