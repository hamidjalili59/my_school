part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.otpHandshake(
    double phoneNumber,
  ) = _OtpHandshake;

  const factory AuthEvent.resetIdel() = _ResetIdel;

  const factory AuthEvent.otpVerify(
    double phoneNumber,
    int verifyCode,
  ) = _OtpVerify;
  const factory AuthEvent.cacheAuthData(
    OtpHandshakeResponse token,
  ) = _CacheAuthData;
}
