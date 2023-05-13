part of 'classroom_bloc.dart';

@freezed
class ClassroomEvent with _$ClassroomEvent {
  const factory ClassroomEvent.changePages(
    String indexName,
  ) = _ChangePages;
  const factory ClassroomEvent.getClasses() = _GetClasses;
  const factory ClassroomEvent.updateClass(Classroom classroom) = _UpdateClass;
  const factory ClassroomEvent.getTeacherClasses(int teacherId) =
      _GetTeacherClasses;
  const factory ClassroomEvent.removeClass(int classId) = _RemoveClass;
  const factory ClassroomEvent.createClasses(
    String className,
  ) = _CreateClasses;
}
