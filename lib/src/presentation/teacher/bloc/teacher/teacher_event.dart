part of 'teacher_bloc.dart';

@freezed
class TeacherEvent with _$TeacherEvent {
  const factory TeacherEvent.getClasses(
    int teacherId,
  ) = _GetClasses;
  const factory TeacherEvent.addTeacher(
    Teacher teacher,
  ) = _AddTeacher;
  const factory TeacherEvent.updateTeacher(
    Teacher teacher,
  ) = _UpdateTeacher;
  const factory TeacherEvent.getTeachers(
    int schoolId,
  ) = _GetTeachers;
}
