import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';
import 'package:my_school/src/features/exam/domain/use_cases/add_exam_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/get_exams_use_case.dart';
import 'package:my_school/src/features/exam/domain/use_cases/remove_exam_use_case.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_schools.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';

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
    if (GeneralConstants.userType == UserType.teacher) {
      if (getIt.get<TeacherBloc>().state.teachers.isEmpty) {
        getIt.get<TeacherBloc>().add(
            TeacherEvent.getTeachers(getIt.get<TeacherGetSchools>().schoolId));
      }
    }
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
    emit(state.copyWith(isLoading: true));
    await _addExamsUseCase.call(param: tuple.Tuple1(event.exam)).then(
          (value) => value.fold(
            (l) {
              emit(state.copyWith(isLoading: false));
              ScaffoldMessenger.of(
                      getIt.get<AppRouter>().navigatorKey.currentContext!)
                  .showSnackBar(
                SnackBar(
                  backgroundColor: Colors.red,
                  content: Text(
                    'عملیات با شکست مواجه شد',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(
                            getIt.get<AppRouter>().navigatorKey.currentContext!)
                        .textTheme
                        .labelLarge!
                        .copyWith(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w800),
                  ),
                ),
              );
            },
            (r) {
              List<Exam> tempList = state.exams.toList();
              tempList.add(r.exam);
              getIt.get<AppRouter>().pop();
              emit(state.copyWith(isLoading: false, exams: tempList));
            },
          ),
        );
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
