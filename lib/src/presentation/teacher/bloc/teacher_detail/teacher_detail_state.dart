part of 'teacher_detail_bloc.dart';

@freezed
class TeacherDetailState with _$TeacherDetailState {
  const factory TeacherDetailState.idle({
    @Default(false) bool isLoading,
    Teacher? selectedTeacher,
    Course? selectedCourse,
  }) = _Idle;
}
