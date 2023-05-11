part of 'student_bloc.dart';

@freezed
class StudentEvent with _$StudentEvent {
  const factory StudentEvent.getStudents(
    int classId,
  ) = _GetStudents;
  const factory StudentEvent.getStudentsParent(
    double phoneNumber,
  ) = _GetStudentsParent;
  const factory StudentEvent.addStudent(
    Student student,
    String parentName,
  ) = _AddStudent;
}
