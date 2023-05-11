import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/student/domain/use_cases/add_student_use_case.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/student/domain/use_cases/get_students_parent_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/get_students_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'student_state.dart';
part 'student_event.dart';
part 'student_bloc.freezed.dart';

@lazySingleton
class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final GetStudentUseCase _getStudentUseCase;
  final AddStudentUseCase _addStudentUseCase;
  final GetStudentParentUseCase _getStudentParentUseCase;
  StudentBloc(
    this._getStudentUseCase,
    this._addStudentUseCase,
    this._getStudentParentUseCase,
  ) : super(const StudentState.idle(isLoading: true)) {
    on<_GetStudents>(_onGetStudents);
    on<_AddStudent>(_onAddStudent);
    on<_GetStudentsParent>(_onAddStudentParent);
  }

  @override
  void onEvent(StudentEvent event) {
    FunctionHelper()
        .logMessage('>>>>> Student Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onGetStudents(
      _GetStudents event, Emitter<StudentState> emit) async {
    emit(const StudentState.idle(isLoading: true));
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

  FutureOr<void> _onAddStudent(
      _AddStudent event, Emitter<StudentState> emit) async {
    await _addStudentUseCase
        .call(
            param:
                tuple.Tuple2<Student, String>(event.student, event.parentName))
        .then(
          (value) => value.fold(
            (l) => null,
            (r) {
              List<Student> tempList = [];
              tempList.add(r.student);
              return emit(
                  StudentState.idle(isLoading: false, students: tempList));
            },
          ),
        );
    getIt.get<AppRouter>().pop();
  }

  FutureOr<void> _onAddStudentParent(
      _GetStudentsParent event, Emitter<StudentState> emit) async {
    emit(const StudentState.idle(isLoading: true));
    await _getStudentParentUseCase
        .call(
          param: tuple.Tuple1<double>(
            getIt.get<OtpHandshakeResponse>().phoneNumber,
          ),
        )
        .then(
          (value) => value.fold(
            (l) => null,
            (r) =>
                emit(StudentState.idle(isLoading: false, students: r.students)),
          ),
        );
  }
}
