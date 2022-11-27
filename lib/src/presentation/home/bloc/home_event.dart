part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.changePages(
    String index,
  ) = _ChangePages;
}
