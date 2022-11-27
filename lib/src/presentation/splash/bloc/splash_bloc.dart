import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/config/utils/function_helper.dart';

part 'splash_state.dart';
part 'splash_event.dart';
part 'splash_bloc.freezed.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState.loading()) {
    on<_CheckingJWT>(_onChackingJWT);
  }

  @override
  void onEvent(SplashEvent event) {
    FunctionHelper().logMessage('>>>>> Auth Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onChackingJWT(
      _CheckingJWT event, Emitter<SplashState> emit) async {
      }
}
