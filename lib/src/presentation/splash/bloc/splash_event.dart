part of 'splash_bloc.dart';

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.getClientData(
    OtpHandshakeResponse token,
  ) = _GetClientData;
  const factory SplashEvent.tokenIsExist(
  ) = _TokenIsExist;

}
