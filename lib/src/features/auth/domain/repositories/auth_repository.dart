import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, OtpHandshakeResponse>> otpHandshake(
      {required double phoneNumber});
  //

  //
  Future<Either<AuthFailure, void>> cacheAuthData({
    required String token,
    required String typeOfUser,
    required double phoneNumber,
  });
  //
  Future<Either<AuthFailure, OtpHandshakeResponse?>> getCachedAuthData();
  //
}
