import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/models/score_model.dart';
import 'package:my_school/src/features/score/domain/use_cases/get_scores_use_case.dart';

part 'score_state.dart';
part 'score_event.dart';
part 'score_bloc.freezed.dart';

@lazySingleton
class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  final GetScoreUseCase _getScoreUseCase;
  ScoreBloc(this._getScoreUseCase)
      : super(const ScoreState.idle(isLoading: true)) {
    on<_GetScores>(_onGetScores);
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
}
