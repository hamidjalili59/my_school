part of 'rollcall_bloc.dart';

@freezed
class RollcallState with _$RollcallState {
  const factory RollcallState.initial() = _Initial;
  const factory RollcallState.loadInProgress() = _LoadInProgress;
  const factory RollcallState.currentPageIndex({
    @Default(0) int pageState,
  }) = _CurrentPageIndex;
}
