part of 'score_board_bloc.dart';

@freezed
class ScoreBoardState with _$ScoreBoardState {
  const factory ScoreBoardState.idle({
    @Default(false) bool isLoading,
    @Default([]) List<Score> scores,
    @Default([]) List<TextEditingController> scoresNumeric,
    @Default([]) List<Student> students,
  }) = _Idle;
}
