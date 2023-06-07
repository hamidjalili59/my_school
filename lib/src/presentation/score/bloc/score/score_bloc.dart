import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/models/score_model.dart';
import 'package:my_school/src/features/score/domain/use_cases/get_scores_use_case.dart';
import 'package:my_school/src/features/score/domain/use_cases/remove_score_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'score_state.dart';
part 'score_event.dart';
part 'score_bloc.freezed.dart';

@injectable
class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  final GetScoreUseCase _getScoreUseCase;
  final RemoveScoreUseCase _removeScoreUseCase;
  ScoreBloc(this._getScoreUseCase, this._removeScoreUseCase)
      : super(const ScoreState.idle(isLoading: true)) {
    on<_GetScores>(_onGetScores);
    on<_RemoveScore>(_onRemoveScores);
  }

  FutureOr<void> _onGetScores(
      _GetScores event, Emitter<ScoreState> emit) async {
    emit(ScoreState.idle(isLoading: false, scores: state.scores));
    await _getScoreUseCase.call(param: tuple.Tuple1<int>(event.studentId)).then(
          (value) => value.fold(
            (l) =>
                emit(ScoreState.idle(isLoading: false, scores: state.scores)),
            (r) => emit(ScoreState.idle(isLoading: false, scores: r.scores)),
          ),
        );
  }

  FutureOr<void> _onRemoveScores(
      _RemoveScore event, Emitter<ScoreState> emit) async {
    emit(ScoreState.idle(isLoading: true, scores: state.scores));
    try {
      await _removeScoreUseCase
          .call(param: tuple.Tuple1<int>(event.scoreId))
          .then(
            (value) => value.fold(
              (l) =>
                  emit(ScoreState.idle(isLoading: false, scores: state.scores)),
              (r) {
                List<Score> tempList = state.scores.toList();
                tempList.removeAt(tempList
                    .map((e) => e.gradeId)
                    .toList()
                    .indexOf(event.scoreId));
                emit(ScoreState.idle(isLoading: false, scores: tempList));
              },
            ),
          );
      getIt.get<AppRouter>().pop();
    } catch (e) {
      emit(ScoreState.idle(isLoading: false, scores: state.scores));
      getIt.get<AppRouter>().pop();
    }
  }
}
