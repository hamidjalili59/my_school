part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loadInProgress() = _LoadInProgress;
  const factory SplashState.jwtExist(OtpHandshakeResponse token) = _JwtExist;
  const factory SplashState.jwtIsNotExp(String typeOfUser) = _JwtIsNotExp;
  const factory SplashState.failure({
    AuthFailure? failure,
    @Default('') String message,
  }) = _Failure;
}
