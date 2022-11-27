part of 'rollcall_bloc.dart';

@freezed
class RollcallEvent with _$RollcallEvent {
  const factory RollcallEvent.changeStudent(
    int index,
  ) = _ChangeStudent;
  const factory RollcallEvent.studentIsReady(
    int index,
  ) = _StudentIsReady;
  const factory RollcallEvent.getStudentList() = _GetStudentList;
  const factory RollcallEvent.changePageViewToTable() = _ChangePageViewToTable;
  const factory RollcallEvent.finishRollCall() = _FinishRollCall;
}
