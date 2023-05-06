import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/use_cases/add_student_use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/update_student_use_case.dart';

part 'student_state.dart';
part 'student_event.dart';
part 'student_bloc.freezed.dart';

@lazySingleton
class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final GetStudentUseCase _getStudentUseCase;
  final AddStudentUseCase _addStudentUseCase;
  final UpdateStudentUseCase _updateStudentUseCase;
  StudentBloc(
    this._getStudentUseCase,
    this._addStudentUseCase,
    this._updateStudentUseCase,
  ) : super(const StudentState.idle()) {
    on<_GetStudents>(_onGetStudents);
  }

  @override
  void onEvent(StudentEvent event) {
    FunctionHelper()
        .logMessage('>>>>> Student Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onGetStudents(
      _GetStudents event, Emitter<StudentState> emit) async {
    await _getStudentUseCase
        .call(
          param: tuple.Tuple1<int>(event.classId),
        )
        .then(
          (value) => value.fold(
            (l) => null,
            (r) {
              emit(StudentState.idle(students: r.students));
            },
          ),
        );
  }
}
