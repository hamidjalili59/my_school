import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/get_rollcalls_use_case.dart';

part 'rollcall_state.dart';
part 'rollcall_event.dart';
part 'rollcall_bloc.freezed.dart';

@lazySingleton
class RollcallBloc extends Bloc<RollcallEvent, RollcallState> {
  final GetRollCallsUseCase _getRollCallsUseCase;
  RollcallBloc(this._getRollCallsUseCase)
      : super(const RollcallState.idle(isLoading: true)) {
    on<_GetRollcalls>(_onGetRollCalls);
  }
  @override
  void onEvent(RollcallEvent event) {
    FunctionHelper()
        .logMessage('>>>>> RollCall Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onGetRollCalls(
      _GetRollcalls event, Emitter<RollcallState> emit) async {
    await _getRollCallsUseCase
        .call(param: tuple.Tuple1<int>(event.studentId))
        .then(
          (value) => value.fold(
            (l) => emit(RollcallState.idle(
                isLoading: false, rollcalls: state.rollcalls)),
            (r) => emit(
                RollcallState.idle(isLoading: false, rollcalls: r.rollcalls)),
          ),
        );
  }
}
