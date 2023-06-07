import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/base_response.dart';
import 'package:my_school/src/features/school/data/data_sources/remote/school_remote_data_source.dart';
import 'package:my_school/src/features/school/domain/failure/school_failure.dart';
import 'package:my_school/src/features/school/domain/models/school_get_response.dart';
import 'package:my_school/src/features/school/domain/reposiotories/school_repository.dart';

class SchoolRepositoryImpl extends SchoolRepository {
  final SchoolRemoteDataSource _remoteDS;
  final String tokenFieldKey = 'token';

  SchoolRepositoryImpl(this._remoteDS);

  @override
  Future<Either<SchoolFailure, SchoolGetResponse>> getSchool(
      {required double numberPhone}) {
    return _remoteDS
        .getSchools(numberPhone: numberPhone)
        .then((value) => value.fold(
              (l) =>
                  left<SchoolFailure, SchoolGetResponse>(SchoolFailure.api(l)),
              (r) {
                try {
                  if (r.data == null || r.data!.isEmpty) {
                    return left<SchoolFailure, SchoolGetResponse>(
                        const SchoolFailure.nullParam());
                  }

                  final schoolGetResponse = SchoolGetResponse.fromJson(
                    BaseResponse.fromJson(r.data ?? {}).payload,
                  );
                  return right<SchoolFailure, SchoolGetResponse>(
                    schoolGetResponse,
                  );
                } catch (e) {
                  return left(const SchoolFailure.nullParam());
                }
              },
            ));
  }
}
