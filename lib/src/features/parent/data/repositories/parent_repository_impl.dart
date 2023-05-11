import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/parent/data/data_sources/local/parent_local_data_source.dart';
import 'package:my_school/src/features/parent/data/data_sources/remote/parent_remote_data_source.dart';
import 'package:my_school/src/features/parent/domain/failure/parent_failure.dart';
import 'package:my_school/src/features/parent/domain/models/parent_get_response.dart';
import 'package:my_school/src/features/parent/domain/models/parent_success_response.dart';
import 'package:my_school/src/features/parent/domain/models/parent_model/parent.dart';
import 'package:my_school/src/features/parent/domain/repositories/parent_repository.dart';
import 'package:my_school/src/features/core/models/base_response.dart';

class ParentRepositoryImpl extends ParentRepository {
  final ParentRemoteDataSource _remoteDS;
  final ParentLocalDataSource _localDS;
  final String tokenFieldKey = 'token';

  ParentRepositoryImpl(this._remoteDS, this._localDS);

  @override
  Future<Either<ParentFailure, void>> cacheParentsData(
      {required Parent parent}) {
    return _localDS.cacheData(fieldKey: 'parent', value: parent).then(
          (value) => value.fold(
            (l) => left<ParentFailure, void>(ParentFailure.database(l)),
            (r) => right<ParentFailure, void>(null),
          ),
        );
  }

  @override
  Future<Either<ParentFailure, ParentGetResponse>> getCachedParentData() {
    return _localDS.getCachedData(fieldKey: 'parents').then(
          (value) => value.fold(
            (l) => left<ParentFailure, ParentGetResponse>(
                ParentFailure.database(l)),
            (r) => right<ParentFailure, ParentGetResponse>(
                ParentGetResponse(parents: r ?? Parent())),
          ),
        );
  }

  @override
  Future<Either<ParentFailure, ParentGetResponse>> getParent(
      {required int parentId}) {
    return _remoteDS.getParent(parentId: parentId).then(
          (value) => value.fold(
            (l) => left<ParentFailure, ParentGetResponse>(
              ParentFailure.api(l),
            ),
            (r) async {
              final parentsDataFromServer = ParentGetResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ParentFailure, ParentGetResponse>(
                parentsDataFromServer,
              );
            },
          ),
        );
  }

  @override
  Future<Either<ParentFailure, ParentSuccessResponse>> updateParent({
    required int schoolId,
    required int parentId,
    required String name,
    required double phoneNumber,
  }) {
    return _remoteDS
        .updateParent(
          parentId: parentId,
          schoolId: schoolId,
          phoneNumber: phoneNumber,
          name: name,
        )
        .then(
          (value) => value.fold(
            (l) => left<ParentFailure, ParentSuccessResponse>(
              ParentFailure.api(l),
            ),
            (r) async {
              final updateParentOnServer = ParentSuccessResponse.fromJson(
                BaseResponse.fromJson(r.data ?? {}).toJson(),
              );
              return right<ParentFailure, ParentSuccessResponse>(
                updateParentOnServer,
              );
            },
          ),
        );
  }
}
