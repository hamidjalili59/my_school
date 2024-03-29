import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/core/models/use_case.dart';

class CacheAuthDataUseCase
    implements
        UseCase<AuthFailure, void, tuple.Tuple3<String, String, double>> {
  const CacheAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call(
          {tuple.Tuple3<String, String, double>? param}) =>
      (param == null)
          ? Future.value(left(const AuthFailure.nullParam()))
          : repo.cacheAuthData(
              token: param.value1,
              typeOfUser: param.value2,
              phoneNumber: param.value3,
            );
}
