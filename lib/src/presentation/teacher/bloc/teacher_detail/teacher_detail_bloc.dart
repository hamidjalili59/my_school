import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/add_mediator_use_case.dart';
import 'package:my_school/src/features/mediator_tc/domain/use_cases/get_mediators_use_case.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'teacher_detail_state.dart';
part 'teacher_detail_event.dart';
part 'teacher_detail_bloc.freezed.dart';

@lazySingleton
class TeacherDetailBloc extends Bloc<TeacherDetailEvent, TeacherDetailState> {
  final GetMediatorUseCase _getMediatorUseCase;
  final AddMediatorUseCase _addMediatorUseCase;
  TeacherDetailBloc(this._getMediatorUseCase, this._addMediatorUseCase)
      : super(const TeacherDetailState.idle(isLoading: true)) {
    on<_SelectCourseItem>(_onSelectCourseItem);
    on<_SelectTeacherItem>(_onSelectTeacherItem);
    on<_AcceptTeacher>(_onAcceptTeacher);
    on<_GetMediators>(_onGetMediators);
  }

  @override
  void onEvent(TeacherDetailEvent event) {
    FunctionHelper()
        .logMessage('>>>>> Teacher Detail Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onSelectCourseItem(
      _SelectCourseItem event, Emitter<TeacherDetailState> emit) {
    emit(TeacherDetailState.idle(
        selectedCourse: event.course, selectedTeacher: state.selectedTeacher));
  }

  FutureOr<void> _onSelectTeacherItem(
      _SelectTeacherItem event, Emitter<TeacherDetailState> emit) {
    emit(TeacherDetailState.idle(
        selectedTeacher: event.teacher, selectedCourse: state.selectedCourse));
  }

  FutureOr<void> _onAcceptTeacher(
      _AcceptTeacher event, Emitter<TeacherDetailState> emit) async {
    await _addMediatorUseCase
        .call(
            param: tuple.Tuple2<Mediator, int>(
                Mediator(
                  teacherID: state.selectedTeacher!.teacherId,
                  classID: getIt.get<Classroom>().classID,
                  courseName: getIt.get<Classroom>().className,
                ),
                state.selectedCourse!.courseId))
        .then(
          (value) => value.fold(
            (l) => null,
            (r) {
              add(const _GetMediators());
              getIt.get<AppRouter>().pop();
            },
          ),
        );
  }

  FutureOr<void> _onGetMediators(
      _GetMediators event, Emitter<TeacherDetailState> emit) async {
    emit(TeacherDetailState.idle(
        isLoading: true,
        mediators: state.mediators,
        selectedCourse: state.selectedCourse,
        selectedTeacher: state.selectedTeacher));
    await _getMediatorUseCase
        .call(param: tuple.Tuple1<int>(getIt.get<Classroom>().classID))
        .then(
          (value) => value.fold(
            (l) => emit(TeacherDetailState.idle(
                isLoading: false,
                mediators: state.mediators,
                selectedCourse: state.selectedCourse,
                selectedTeacher: state.selectedTeacher)),
            (r) => emit(TeacherDetailState.idle(
              isLoading: false,
              mediators: r.mediators,
            )),
          ),
        );
  }
}
