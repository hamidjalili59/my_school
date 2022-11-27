part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.jwtValid() = _JWTValid;

  const factory SplashState.jwtInValid(
  ) = _JWTInValid;

  const factory SplashState.loading() = _Loading;

  const factory SplashState.failure({
    @Default('') String message,
  }) = _Failure;
}
