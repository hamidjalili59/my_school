part of 'classroom_bloc.dart';

@freezed
class ClassroomEvent with _$ClassroomEvent {
  const factory ClassroomEvent.changePages(
    String indexName,
  ) = _ChangePages;
}
