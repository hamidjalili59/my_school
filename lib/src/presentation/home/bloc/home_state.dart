part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.currentPageIndex(
          {@Default(AppbarPageType.classroom) AppbarPageType pageState}) =
      _CurrentPageIndex;
}
