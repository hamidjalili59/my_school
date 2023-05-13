part of 'teacher_detail_bloc.dart';

@freezed
class TeacherDetailEvent with _$TeacherDetailEvent {
  const factory TeacherDetailEvent.selectCourseItem(Course? course) =
      _SelectCourseItem;
  const factory TeacherDetailEvent.selectTeacherItem(Teacher? teacher) =
      _SelectTeacherItem;

  const factory TeacherDetailEvent.removeMediator(int mediatorId) =
      _RemoveMediator;
  const factory TeacherDetailEvent.acceptTeacher() = _AcceptTeacher;
  const factory TeacherDetailEvent.getMediators() = _GetMediators;
}
