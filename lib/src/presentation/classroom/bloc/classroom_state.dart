part of 'classroom_bloc.dart';

@freezed
class ClassroomState with _$ClassroomState {
  const factory ClassroomState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Classroom> classes,
    @Default([]) List<Classroom> teacherClasses,
    Classroom? currentClass,
  }) = _Idle;
}
