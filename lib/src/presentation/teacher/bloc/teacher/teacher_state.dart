part of 'teacher_bloc.dart';

@freezed
class TeacherState with _$TeacherState {
  const factory TeacherState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Teacher> teachers,
  }) = _Idle;
}
