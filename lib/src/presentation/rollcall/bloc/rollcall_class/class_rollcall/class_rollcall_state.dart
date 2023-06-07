part of 'class_rollcall_bloc.dart';

@freezed
class ClassRollcallState with _$ClassRollcallState {
  const factory ClassRollcallState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Rollcall> rollcalls,
    @Default([]) List<Student> students,
  }) = _Idle;
}
