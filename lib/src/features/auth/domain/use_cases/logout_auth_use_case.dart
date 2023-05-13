import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/core/models/use_case.dart';

class LogoutAuthDataUseCase
    implements UseCase<AuthFailure, void, tuple.Tuple0> {
  const LogoutAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, void>> call({tuple.Tuple0? param}) =>
      repo.logout();
}
