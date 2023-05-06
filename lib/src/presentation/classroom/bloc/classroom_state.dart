part of 'classroom_bloc.dart';

@freezed
class ClassroomState with _$ClassroomState {
  const factory ClassroomState.idle({
    @Default(false) bool isLoading,
    // @Default(AppbarPageType.student) AppbarPageType pageState,
    @Default([]) List<Classroom> classes,
    Classroom? currentClass,
  }) = _Idle;
  const factory ClassroomState.currentPageIndex(
      {@Default('دانش‌آموزان') String pageState}) = _CurrentPageIndex;
}
