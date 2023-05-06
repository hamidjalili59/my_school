import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';

part 'teacher_detail_state.dart';
part 'teacher_detail_event.dart';
part 'teacher_detail_bloc.freezed.dart';

@lazySingleton
class TeacherDetailBloc extends Bloc<TeacherDetailEvent, TeacherDetailState> {
  TeacherDetailBloc() : super(const TeacherDetailState.idle()) {
    on<_SelectCourseItem>(_onSelectCourseItem);
    on<_SelectTeacherItem>(_onSelectTeacherItem);
    on<_AcceptTeacher>(_onAcceptTeacher);
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
      _AcceptTeacher event, Emitter<TeacherDetailState> emit) {
    print(
        '___${state.selectedCourse!.courseName}______${state.selectedTeacher!.basicInfo!.name}______');
  }
}
