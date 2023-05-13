part of 'score_bloc.dart';

@freezed
class ScoreEvent with _$ScoreEvent {
  const factory ScoreEvent.removeScore(int scoreId) = _RemoveScore;
  const factory ScoreEvent.getScores(
    int studentId,
  ) = _GetScores;
}
