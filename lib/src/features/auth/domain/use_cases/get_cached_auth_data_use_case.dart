import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:my_school/src/features/auth/domain/repositories/auth_repository.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/core/models/use_case.dart';

class GetCachedAuthDataUseCase
    implements UseCase<AuthFailure, OtpVerifyResponse?, tuple.Tuple0> {
  const GetCachedAuthDataUseCase(this.repo);

  final AuthRepository repo;

  @override
  Future<Either<AuthFailure, OtpVerifyResponse?>> call({tuple.Tuple0? param}) =>
      repo.getCachedAuthData();
}
