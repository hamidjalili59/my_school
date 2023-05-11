part of 'rollcall_bloc.dart';

@freezed
class RollcallState with _$RollcallState {
  const factory RollcallState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Rollcall> rollcalls,
  }) = _Idle;
}
