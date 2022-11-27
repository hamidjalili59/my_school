part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.currentPageIndex({@Default('') String pageState}) =
      _CurrentPageIndex;
}
