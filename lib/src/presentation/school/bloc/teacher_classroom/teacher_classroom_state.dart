part of 'teacher_classroom_bloc.dart';

@freezed
class TeacherClassroomState with _$TeacherClassroomState {
  const factory TeacherClassroomState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Classroom> classes,
  }) = _Idle;
}
