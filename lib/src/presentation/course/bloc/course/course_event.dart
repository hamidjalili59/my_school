part of 'course_bloc.dart';

@freezed
class CourseEvent with _$CourseEvent {
  const factory CourseEvent.getClasses(
    int schoolId,
  ) = _GetClasses;
  const factory CourseEvent.addCourse(
    String courseName,
  ) = _AddCourse;
  const factory CourseEvent.updateCourse(
    Course course,
  ) = _UpdateCourse;
  const factory CourseEvent.getCourses(
    int schoolId,
  ) = _GetCourses;
}
