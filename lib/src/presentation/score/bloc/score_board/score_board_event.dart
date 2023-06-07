part of 'score_board_bloc.dart';

@freezed
class ScoreBoardEvent with _$ScoreBoardEvent {
  const factory ScoreBoardEvent.getStudents() = _GetStudents;
  const factory ScoreBoardEvent.putScores(
    List<Score> scores,
  ) = _PutScores;
  const factory ScoreBoardEvent.acceptScores() = _AcceptScores;
}
