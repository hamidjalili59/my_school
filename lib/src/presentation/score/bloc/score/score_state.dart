part of 'score_bloc.dart';

@freezed
class ScoreState with _$ScoreState {
  const factory ScoreState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Score> scores,
  }) = _Idle;
}
