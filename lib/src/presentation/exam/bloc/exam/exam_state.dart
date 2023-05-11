part of 'exam_bloc.dart';

@freezed
class ExamState with _$ExamState {
  const factory ExamState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Exam> exams,
  }) = _Idle;
}
