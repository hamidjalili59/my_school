import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/classroom/domain/use_cases/get_teacher_classroom_use_case.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher_get_schools.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'teacher_classroom_state.dart';
part 'teacher_classroom_event.dart';
part 'teacher_classroom_bloc.freezed.dart';

@lazySingleton
class TeacherClassroomBloc
    extends Bloc<TeacherClassroomEvent, TeacherClassroomState> {
  final GetTeacherClassroomsUseCase _getTeacherClassroomUseCase;
  TeacherClassroomBloc(this._getTeacherClassroomUseCase)
      : super(const TeacherClassroomState.idle()) {
    on<_GetClasses>(_onGetClasses);
    add(const _GetClasses());
  }
  @override
  void onEvent(TeacherClassroomEvent event) {
    FunctionHelper()
        .logMessage('>>>>> TeacherClasses Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onGetClasses(
      _GetClasses event, Emitter<TeacherClassroomState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      await _getTeacherClassroomUseCase
          .call(
            param: tuple.Tuple2(
              getIt.get<TeacherGetSchools>().schoolId,
              getIt.get<TeacherGetSchools>().teacherId,
            ),
          )
          .then(
            (value) => value.fold(
              (l) => emit(state.copyWith(isLoading: false)),
              (r) {
                emit(state.copyWith(isLoading: false, classes: r.classrooms));
              },
            ),
          );
    } catch (_) {
      emit(state.copyWith(isLoading: false));
    }
  }
}
