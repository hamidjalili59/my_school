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
import 'package:my_school/src/features/mediator_tc/domain/use_cases/remove_mediator_use_case.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'teacher_detail_state.dart';
part 'teacher_detail_event.dart';
part 'teacher_detail_bloc.freezed.dart';

@lazySingleton
class TeacherDetailBloc extends Bloc<TeacherDetailEvent, TeacherDetailState> {
  final GetMediatorUseCase _getMediatorUseCase;
  final AddMediatorUseCase _addMediatorUseCase;
  final RemoveMediatorUseCase _removeMediatorUseCase;
  TeacherDetailBloc(this._getMediatorUseCase, this._addMediatorUseCase,
      this._removeMediatorUseCase)
      : super(const TeacherDetailState.idle(isLoading: true)) {
    on<_SelectCourseItem>(_onSelectCourseItem);
    on<_SelectTeacherItem>(_onSelectTeacherItem);
    on<_AcceptTeacher>(_onAcceptTeacher);
    on<_RemoveMediator>(_onRemoveMediator);
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
        selectedCourse: event.course,
        selectedTeacher: state.selectedTeacher,
        isLoading: false,
        mediators: state.mediators));
  }

  FutureOr<void> _onSelectTeacherItem(
      _SelectTeacherItem event, Emitter<TeacherDetailState> emit) {
    emit(TeacherDetailState.idle(
        selectedTeacher: event.teacher,
        selectedCourse: state.selectedCourse,
        isLoading: false,
        mediators: state.mediators));
  }

  FutureOr<void> _onAcceptTeacher(
      _AcceptTeacher event, Emitter<TeacherDetailState> emit) async {
    emit(
      TeacherDetailState.idle(
        isLoading: true,
        mediators: state.mediators,
        selectedCourse: state.selectedCourse,
        selectedTeacher: state.selectedTeacher,
      ),
    );
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
            (l) => emit(
              TeacherDetailState.idle(
                isLoading: false,
                mediators: state.mediators,
                selectedCourse: state.selectedCourse,
                selectedTeacher: state.selectedTeacher,
              ),
            ),
            (r) {
              List<Mediator> tempList = state.mediators.toList();
              tempList.add(r.mediator);
              emit(
                TeacherDetailState.idle(
                  isLoading: false,
                  mediators: tempList,
                  selectedCourse: state.selectedCourse,
                  selectedTeacher: state.selectedTeacher,
                ),
              );
            },
          ),
        );

    getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
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

  FutureOr<void> _onRemoveMediator(
      _RemoveMediator event, Emitter<TeacherDetailState> emit) async {
    emit(TeacherDetailState.idle(isLoading: true, mediators: state.mediators));
    try {
      await _removeMediatorUseCase
          .call(param: tuple.Tuple1<int>(event.mediatorId))
          .then(
            (value) => value.fold(
              (l) => emit(TeacherDetailState.idle(
                  isLoading: false, mediators: state.mediators)),
              (r) {
                List<Mediator> tempList = state.mediators.toList();
                tempList.removeAt(tempList
                    .map((e) => e.mediatorId)
                    .toList()
                    .indexOf(event.mediatorId));
                emit(TeacherDetailState.idle(
                    isLoading: false, mediators: tempList));
              },
            ),
          );

      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    } catch (e) {
      emit(TeacherDetailState.idle(
          isLoading: false, mediators: state.mediators));

      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    }
  }
}
