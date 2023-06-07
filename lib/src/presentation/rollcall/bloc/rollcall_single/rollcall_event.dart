part of 'rollcall_bloc.dart';

@freezed
class RollcallEvent with _$RollcallEvent {
  const factory RollcallEvent.getRollcalls(
    int studentId,
  ) = _GetRollcalls;
}
