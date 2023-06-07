import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/use_cases/add_score_use_case.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'score_board_state.dart';
part 'score_board_event.dart';
part 'score_board_bloc.freezed.dart';

@lazySingleton
class ScoreBoardBloc extends Bloc<ScoreBoardEvent, ScoreBoardState> {
  final GetStudentUseCase _getStudentUseCase;
  final AddScoreUseCase _addScoreUseCase;
  // final AddScoreUseCase _addScoreUseCase;

  ScoreBoardBloc(this._getStudentUseCase, this._addScoreUseCase)
      : super(const ScoreBoardState.idle(isLoading: true)) {
    on<_GetStudents>(_onGetStudents);
    on<_AcceptScores>(_onAcceptScores);
    on<_PutScores>(_onPutScores);

    add(const _GetStudents());
  }

  FutureOr<void> _onGetStudents(
      _GetStudents event, Emitter<ScoreBoardState> emit) async {
    emit(ScoreBoardState.idle(
        isLoading: true, scores: state.scores, students: state.students));
    await _getStudentUseCase
        .call(param: tuple.Tuple1<int>(getIt.get<Classroom>().classID))
        .then(
          (value) => value.fold(
            (l) => emit(ScoreBoardState.idle(
                isLoading: false,
                scores: state.scores,
                students: state.students)),
            (r) {
              List<TextEditingController> tempList = [];
              if (r.students.isNotEmpty) {
                for (var i = 0; i < r.students.length; i++) {
                  tempList.add(TextEditingController());
                }
                _addScoreUseCase;
              }
              emit(ScoreBoardState.idle(
                isLoading: false,
                students: r.students,
                scoresNumeric: tempList,
              ));
            },
          ),
        );
  }

  FutureOr<void> _onAcceptScores(
      _AcceptScores event, Emitter<ScoreBoardState> emit) async {
    List<Score> tempList =
        List<Score>.generate(state.students.length, (index) => Score());

    for (var i = 0; i < state.students.length; i++) {
      tempList.add(Score(
          classId: getIt.get<Classroom>().classID,
          studentId: state.students[i].studentId,
          teacherName: ''));
    }
    //await _addScoreUseCase.call(
    //     param: tuple.Tuple2(getIt.get<Classroom>().classID, tempList));

    for (var i = 0; i < state.scoresNumeric.length; i++) {
      state.scoresNumeric[i].dispose();
    }
  }

  FutureOr<void> _onPutScores(
      _PutScores event, Emitter<ScoreBoardState> emit) {}
}
