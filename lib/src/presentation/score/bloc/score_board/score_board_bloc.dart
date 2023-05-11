import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'score_board_state.dart';
part 'score_board_event.dart';
part 'score_board_bloc.freezed.dart';

@lazySingleton
class ScoreBoardBloc extends Bloc<ScoreBoardEvent, ScoreBoardState> {
  final GetStudentUseCase _getStudentUseCase;
  // final AddScoreUseCase _addScoreUseCase;

  ScoreBoardBloc(this._getStudentUseCase)
      : super(const ScoreBoardState.idle(isLoading: true)) {
    on<_GetStudents>(_onGetStudents);
    on<_AcceptScores>(_onAcceptScores);
    on<_PutScores>(_onPutScores);

    add(const _GetStudents());
  }

  FutureOr<void> _onGetStudents(
      _GetStudents event, Emitter<ScoreBoardState> emit) async {
    emit(const ScoreBoardState.idle(isLoading: true));
    await _getStudentUseCase
        .call(param: tuple.Tuple1<int>(getIt.get<Classroom>().classID!))
        .then(
          (value) => value.fold(
            (l) => null,
            (r) => emit(ScoreBoardState.idle(
              isLoading: false,
              students: r.students,
            )),
          ),
        );
  }

  FutureOr<void> _onAcceptScores(
      _AcceptScores event, Emitter<ScoreBoardState> emit) {}

  FutureOr<void> _onPutScores(
      _PutScores event, Emitter<ScoreBoardState> emit) {}
}
