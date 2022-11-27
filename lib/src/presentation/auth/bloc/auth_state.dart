part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.idle({@Default(false) bool isLoading}) = _Idle;

  const factory AuthState.otpHandshakeSuccess(
    OtpHandshakeResponse handshakeResponse,
  ) = _OtpHandshakeSuccess;

  const factory AuthState.otpVerifySuccess(
    OtpVerifyResponse verifyResponse,
  ) = _OtpVerifySuccess;

  const factory AuthState.loading() = _Loading;

  const factory AuthState.failure({
    AuthFailure? failure,
    @Default('') String message,
  }) = _Failure;
  
}
