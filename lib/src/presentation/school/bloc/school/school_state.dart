part of 'school_bloc.dart';

@freezed
class SchoolState with _$SchoolState {
  const factory SchoolState.idle({
    @Default(false) bool isLoading,
    @Default({}) Map<String, dynamic> data,
  }) = _Idle;
}
