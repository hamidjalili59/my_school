import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/features/exam/domain/use_cases/add_exam_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/get_exams_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/remove_exam_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'exam_state.dart';
part 'exam_event.dart';
part 'exam_bloc.freezed.dart';

@lazySingleton
class ExamBloc extends Bloc<ExamEvent, ExamState> {
  final GetExamsUseCase _getExamsUseCase;
  final AddExamUseCase _addExamsUseCase;
  final RemoveExamUseCase _removeExamsUseCase;
  ExamBloc(
      this._getExamsUseCase, this._addExamsUseCase, this._removeExamsUseCase)
      : super(const ExamState.idle(isLoading: true)) {
    on<_GetExams>(_onGetExams);
    on<_RemoveExam>(_onRemoveExam);
    on<_AcceptExams>(_onAcceptExams);
  }

  FutureOr<void> _onGetExams(_GetExams event, Emitter<ExamState> emit) async {
    emit(ExamState.idle(isLoading: true, exams: state.exams));
    await _getExamsUseCase
        .call(param: tuple.Tuple1(getIt.get<Classroom>().classID))
        .then(
          (value) => value.fold(
            (l) => emit(ExamState.idle(isLoading: false, exams: state.exams)),
            (r) => emit(ExamState.idle(isLoading: false, exams: r.exams)),
          ),
        );
  }

  FutureOr<void> _onAcceptExams(
      _AcceptExams event, Emitter<ExamState> emit) async {
    await _addExamsUseCase.call(param: tuple.Tuple1(event.exam)).then(
          (value) => value.fold(
            (l) => null,
            (r) => null,
          ),
        );
    add(const ExamEvent.getExams());
  }

  FutureOr<void> _onRemoveExam(
      _RemoveExam event, Emitter<ExamState> emit) async {
    emit(ExamState.idle(isLoading: true, exams: state.exams));
    try {
      await _removeExamsUseCase
          .call(param: tuple.Tuple1<int>(event.examId))
          .then(
            (value) => value.fold(
              (l) => emit(ExamState.idle(isLoading: false, exams: state.exams)),
              (r) {
                List<Exam> tempList = state.exams.toList();
                tempList.removeAt(tempList
                    .map((e) => e.examId)
                    .toList()
                    .indexOf(event.examId));
                emit(ExamState.idle(isLoading: false, exams: tempList));
              },
            ),
          );
      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    } catch (e) {
      emit(ExamState.idle(isLoading: false, exams: state.exams));
      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    }
  }
}
