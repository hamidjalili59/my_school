// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/failures/auth_failure.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/auth/domain/use_cases/get_cached_auth_data_use_case.dart';
import 'package:injectable/injectable.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final GetCachedAuthDataUseCase _getCachedAuthDataUseCase;
  final AppRouter appRoute = getIt.get<AppRouter>();
  SplashBloc(
    this._getCachedAuthDataUseCase,
  ) : super(const _LoadInProgress()) {
    on<_GetClientData>(_getClientData);
    on<_TokenIsExist>(_jwtIsExist);
  }
  @override
  void onEvent(SplashEvent event) {
    FunctionHelper().logMessage('>>>>> Splash Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _getClientData(
    _GetClientData event,
    Emitter<SplashState> emit,
  ) async {
    GeneralConstants.jwt = event.token.token;
    emit(const _LoadInProgress());
    try {
      if (event.token.typeOfUser == 0) {
        GeneralConstants.isAdmin = true;
        appRoute.pushNamed('/home_page');
      } else if (event.token.typeOfUser == 1) {
        GeneralConstants.isTeacher = true;
      } else {
        GeneralConstants.isParent = true;
      }
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }

  // __

  FutureOr<void> _jwtIsExist(
    _TokenIsExist event,
    Emitter<SplashState> emit,
  ) async {
    emit(const _LoadInProgress());
    try {
      final getCacheResult = await _getCachedAuthDataUseCase();
      await Future.delayed(const Duration(seconds: 2));
      getCacheResult.fold(
        (l) {
          emit(_Failure(failure: l));
        },
        (r) {
          if (r == null) {
            appRoute.pushNamed('/auth');
            return emit(const _Failure(failure: AuthFailure.nullParam()));
          }
          getIt.registerSingleton<OtpHandshakeResponse>(r);
          emit(_JwtExist(r));
        },
      );
    } catch (e) {
      FunctionHelper().logErrorDetailMessage(
        e,
        libraryName: 'loginError',
        bodyMessage: 'check your login details',
      );
      emit(_Failure(message: e.toString()));
    }
  }
}
