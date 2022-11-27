part of 'classroom_bloc.dart';

@freezed
class ClassroomState with _$ClassroomState {
  const factory ClassroomState.currentPageIndex({@Default('دانش‌آموزان') String pageState}) =
      _CurrentPageIndex;
}
