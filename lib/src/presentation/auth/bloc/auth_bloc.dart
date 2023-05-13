// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:my_school/src/features/auth/domain/use_cases/cache_auth_data_use_case.dart';
import 'package:my_school/src/features/auth/domain/use_cases/logout_auth_use_case.dart';
import 'package:my_school/src/features/auth/domain/use_cases/otp_handshake_use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final OtpHandshakeUseCase _otpHandshakeUseCase;
  final CacheAuthDataUseCase _cacheAuthDataUseCase;
  final LogoutAuthDataUseCase _logoutAuthDataUseCase;
  // final getIt.get<AppRouter>()r getIt.get<AppRouter>() = getIt.get<getIt.get<AppRouter>()r>();
  AuthBloc(
    this._otpHandshakeUseCase,
    this._cacheAuthDataUseCase,
    this._logoutAuthDataUseCase,
  ) : super(const _Idle()) {
    on<_OtpHandshake>(_onOtpHandshake);
    on<_ResetIdel>(_onResetIdel);
    on<_CacheAuthData>(_onCacheAuthData);
    on<_Logout>(_onLogout);
  }

  @override
  void onEvent(AuthEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onOtpHandshake(
    _OtpHandshake event,
    Emitter<AuthState> emit,
  ) async {
    emit(const _Idle(isLoading: true));
    try {
      final handshakeResult =
          await _otpHandshakeUseCase(param: tuple.Tuple1(event.phoneNumber));
      await Future.delayed(const Duration(seconds: 2));
      handshakeResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          emit(_OtpHandshakeSuccess(r));
          if (!getIt.isRegistered<OtpHandshakeResponse>()) {
            getIt.registerSingleton<OtpHandshakeResponse>(r);
          }
        },
      );
      await Future.delayed(const Duration(milliseconds: 200));
      emit(const AuthState.idle(isLoading: false));
      getIt.get<AppRouter>().replaceNamed('/splash');
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

  FutureOr<void> _onResetIdel(
    _ResetIdel event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle(isLoading: true));
    try {
      emit(const _Idle(isLoading: false));
    } catch (e) {
      emit(_Failure(message: e.toString()));
    }
  }

  FutureOr<void> _onCacheAuthData(
    _CacheAuthData event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.idle(isLoading: true));
    try {
      final cacheResult = await _cacheAuthDataUseCase(
        param: tuple.Tuple3<String, String, double>(
          event.token.token,
          event.token.typeOfUser,
          event.token.phoneNumber,
        ),
      );
      cacheResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          return;
        },
      );
    } catch (e) {
      emit(_Failure(message: e.toString()));
    }
  }

  FutureOr<void> _onLogout(_Logout event, Emitter<AuthState> emit) async {
    await _logoutAuthDataUseCase.call().then(
          (value) => value.fold(
            (l) => null,
            (r) {
              getIt.get<AppRouter>().replaceNamed('/splash');
            },
          ),
        );
  }
}
