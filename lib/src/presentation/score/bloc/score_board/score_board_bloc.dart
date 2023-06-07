import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/score/domain/models/score_model.dart';

import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/score/domain/use_cases/add_score_use_case.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_schools.dart';
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/teacher/bloc/teacher/teacher_bloc.dart';

part 'score_board_state.dart';
part 'score_board_event.dart';
part 'score_board_bloc.freezed.dart';

@injectable
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
    getIt.get<TeacherBloc>().state.teachers;
    await Future.delayed(const Duration(seconds: 1));

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
              emit(
                ScoreBoardState.idle(
                  isLoading: false,
                  students: r.students,
                  scoresNumeric: tempList,
                  teachers: getIt.get<TeacherBloc>().state.teachers,
                ),
              );
            },
          ),
        );
  }

  FutureOr<void> _onAcceptScores(
      _AcceptScores event, Emitter<ScoreBoardState> emit) async {
    List<Score> tempList = [];
    emit(state.copyWith(isLoading: true));
    for (var i = 0; i < state.students.length; i++) {
      tempList.add(
        Score(
          classId: getIt.get<Classroom>().classID,
          studentId: state.students[i].studentId,
          teacherName: state.teachers
              .firstWhere(
                (element) =>
                    element.teacherId ==
                    getIt.get<TeacherGetSchools>().teacherId,
              )
              .basicInfo!
              .name,
          courseName: getIt.get<Classroom>().courseName,
          createdDate: DateTime.now(),
          grade: double.tryParse(state.scoresNumeric[i].text) ?? 0,
        ),
      );
    }
    await _addScoreUseCase
        .call(param: tuple.Tuple2(getIt.get<Classroom>().classID, tempList))
        .then(
          (value) async => value.fold(
            (l) async {
              emit(state.copyWith(isLoading: false));
              ScaffoldMessenger.of(
                      getIt.get<AppRouter>().navigatorKey.currentContext!)
                  .showSnackBar(
                SnackBar(
                  backgroundColor: Colors.redAccent,
                  content: Text(
                    'متاسفانه نمرات ثبت نشد دوباره تلاش کنید',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(
                            getIt.get<AppRouter>().navigatorKey.currentContext!)
                        .textTheme
                        .labelLarge!
                        .copyWith(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                  ),
                ),
              );
            },
            (r) async {
              emit(state.copyWith(isLoading: false));
              ScaffoldMessenger.of(
                      getIt.get<AppRouter>().navigatorKey.currentContext!)
                  .showSnackBar(
                SnackBar(
                  backgroundColor: Colors.greenAccent,
                  content: Text(
                    'نمرات با موفقیت ثبت شد',
                    textDirection: TextDirection.rtl,
                    style: Theme.of(
                            getIt.get<AppRouter>().navigatorKey.currentContext!)
                        .textTheme
                        .labelLarge!
                        .copyWith(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700),
                  ),
                ),
              );
              emit(state.copyWith(isLoading: false));
              for (var i = 0; i < state.scoresNumeric.length; i++) {
                state.scoresNumeric[i].dispose();
              }
              getIt.get<AppRouter>().pop();
            },
          ),
        );
  }

  FutureOr<void> _onPutScores(
      _PutScores event, Emitter<ScoreBoardState> emit) {}
}
