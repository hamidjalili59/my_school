part of 'class_rollcall_bloc.dart';

@freezed
class ClassRollcallEvent with _$ClassRollcallEvent {
  const factory ClassRollcallEvent.setRollcalls(
    int studentIndex,
  ) = _SetRollcalls;
  const factory ClassRollcallEvent.submitRollcalls() = _SubmitRollcalls;
  const factory ClassRollcallEvent.getStudents() = _GetStudents;
}
