// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/auth/domain/models/otp_verify_params.dart';
import 'package:my_school/src/features/auth/domain/models/otp_verify_response.dart';
import 'package:my_school/src/features/auth/domain/use_cases/otp_handshake_use_case.dart';
// import 'package:my_school/src/features/auth/domain/use_cases/otp_verify_use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final OtpHandshakeUseCase _otpHandshakeUseCase;
  // final OtpVerifyUseCase _otpVerifyUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  AuthBloc(
    this._otpHandshakeUseCase,
    // this._otpVerifyUseCase,
  ) : super(const _Idle()) {
    on<_OtpHandshake>(_onOtpHandshake);
    // on<_OtpVerify>(_onOtpVerify);
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
      await Future.delayed(const Duration(seconds: 3));
      handshakeResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          emit(_OtpHandshakeSuccess(r));
        },
      );

      ///TODO: checking this line
      appRoute.pushNamed('/admin_page');
      // appRoute.pushNamed('/splash');
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

  // FutureOr<void> _onOtpVerify(
  //   _OtpVerify event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(const AuthState.idle(isLoading: true));
  //   try {
  //     final verifyResult = await _otpVerifyUseCase(
  //       param: tuple.Tuple2(
  //         event.phoneNumber,
  //         OtpVerifyParams(phoneNumber: event.phoneNumber),
  //       ),
  //     );
  //     verifyResult.fold(
  //       (l) => emit(_Failure(failure: l)),
  //       (r) => emit(_OtpVerifySuccess(r)),
  //     );
  //   } catch (e) {
  //     emit(_Failure(message: e.toString()));
  //   }
  // }
}
