import 'package:dartz/dartz.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/auth/domain/models/otp_verify_response.dart';

abstract class AuthRepository {
  //
  Future<Either<AuthFailure, OtpHandshakeResponse>> otpHandshake(
      {required double phoneNumber});
  //
  // Future<Either<AuthFailure, OtpVerifyResponse>> otpVerify({
  //   required OtpVerifyParams verifyParams,
  //   required String code,
  // });
  //
  Future<Either<AuthFailure, void>> cacheAuthData({
    required double phoneNumber,
    required String jwt,
  });
  //
  Future<Either<AuthFailure, OtpVerifyResponse?>> getCachedAuthData();
  //
}
