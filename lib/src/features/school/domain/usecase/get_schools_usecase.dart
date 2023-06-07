import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/core/models/use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/school/domain/failure/school_failure.dart';
import 'package:my_school/src/features/school/domain/models/school_get_response.dart';
import 'package:my_school/src/features/school/domain/reposiotories/school_repository.dart';

class GetSchoolsUseCase
    implements UseCase<SchoolFailure, SchoolGetResponse, tuple.Tuple1<double>> {
  const GetSchoolsUseCase(this.repo);

  final SchoolRepository repo;

  @override
  Future<Either<SchoolFailure, SchoolGetResponse>> call(
          {tuple.Tuple1<double>? param}) =>
      (param == null)
          ? Future.value(left(const SchoolFailure.nullParam()))
          : repo.getSchool(numberPhone: param.value1);
}
