part of 'course_bloc.dart';

@freezed
class CourseState with _$CourseState {
  const factory CourseState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Course> courses,
  }) = _Idle;
}
