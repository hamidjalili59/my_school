part of 'exam_bloc.dart';

@freezed
class ExamEvent with _$ExamEvent {
  const factory ExamEvent.getExams() = _GetExams;
  const factory ExamEvent.acceptExams(
    Exam exam,
  ) = _AcceptExams;
}
