import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/role_call/data/data_sources/local/rollcall_local_data_source.dart';
import 'package:my_school/src/features/role_call/data/data_sources/remote/rollcall_remote_data_source.dart';
import 'package:my_school/src/features/role_call/domain/failure/rollcall_failure.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_get_response.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_success_response.dart';
import 'package:my_school/src/features/role_call/domain/repositories/rollcall_repository.dart';

class RollcallRepositoryImpl extends RollcallRepository {
  final RollcallRemoteDataSource _remoteDS;
  final RollcallLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  RollcallRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<RollcallFailure, RollcallSuccessResponse>> addRollcall(
      {required List<Rollcall> rollcall}) {
    return _remoteDS.addRollcall(rollcall: rollcall).then(
          (value) => value.fold(
            (l) => left<RollcallFailure, RollcallSuccessResponse>(
                RollcallFailure.api(l)),
            (r) async {
              final rollcallAddSuccessResponse =
                  RollcallSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<RollcallFailure, RollcallSuccessResponse>(
                rollcallAddSuccessResponse,
              );
            },
          ),
        );
  }

  @override
  Future<Either<RollcallFailure, void>> cacheRollcallsData(
      {required List<Rollcall> rollcalls}) {
    return _localDS.cacheData(fieldKey: 'rollcalls', value: rollcalls).then(
          (value) => value.fold(
            (l) => left<RollcallFailure, void>(RollcallFailure.database(l)),
            (r) => right<RollcallFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<RollcallFailure, RollcallGetResponse>> getCachedRollcallData() {
    return _localDS.getCachedData(fieldKey: 'rollcalls').then(
          (value) => value.fold(
            (l) => left<RollcallFailure, RollcallGetResponse>(
                RollcallFailure.database(l)),
            (r) => right<RollcallFailure, RollcallGetResponse>(
                RollcallGetResponse(rollcalls: r ?? [])),
          ),
        );
  }

  @override
  Future<Either<RollcallFailure, RollcallGetResponse>> getRollcalls(
      {required int studentId}) {
    return _remoteDS.getRollcalls(studentId: studentId).then(
          (value) => value.fold(
            (l) => left<RollcallFailure, RollcallGetResponse>(
              RollcallFailure.api(l),
            ),
            (r) async {
              final rollcallsDataFromServer = RollcallGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<RollcallFailure, RollcallGetResponse>(
                rollcallsDataFromServer,
              );
            },
          ),
        );
  }
}
