part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changePages(
    AppbarPageType index,
  ) = _ChangePages;
  const factory HomeEvent.getClasses(
    int schoolId,
  ) = _GetClasses;
  const factory HomeEvent.getTeachers(
    int schoolId,
  ) = _GetTeachers;
  const factory HomeEvent.getCourses(
    int schoolId,
  ) = _GetCourses;
}
