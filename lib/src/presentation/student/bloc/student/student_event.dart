part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.getStudents(
    int classId,
  ) = _GetStudents;
}
