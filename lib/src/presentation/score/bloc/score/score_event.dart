part of 'score_bloc.dart';

@freezed
class ScoreEvent with _$ScoreEvent {
  const factory ScoreEvent.getScores(
    int studentId,
  ) = _GetScores;
}
