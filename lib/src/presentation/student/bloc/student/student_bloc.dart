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
import 'package:my_school/src/features/student/domain/use_cases/remove_student_use_case.dart';
import 'package:my_school/src/features/student/domain/use_cases/update_student_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'student_state.dart';
part 'student_event.dart';
part 'student_bloc.freezed.dart';

@lazySingleton
class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final GetStudentUseCase _getStudentUseCase;
  final AddStudentUseCase _addStudentUseCase;
  final RemoveStudentUseCase _removeStudentUseCase;
  final GetStudentParentUseCase _getStudentParentUseCase;
  final UpdateStudentUseCase _updateStudentUseCase;
  StudentBloc(
    this._getStudentUseCase,
    this._addStudentUseCase,
    this._getStudentParentUseCase,
    this._updateStudentUseCase,
    this._removeStudentUseCase,
  ) : super(const StudentState.idle(isLoading: true)) {
    on<_GetStudents>(_onGetStudents);
    on<_RemoveStudent>(_onRemoveStudent);
    on<_AddStudent>(_onAddStudent);
    on<_GetStudentsParent>(_onAddStudentParent);
    on<_UpdateStudent>(_onUpdateStudent);
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
            (l) => emit(
                StudentState.idle(isLoading: false, students: state.students)),
            (r) {
              emit(StudentState.idle(isLoading: false, students: r.students));
            },
          ),
        );
  }

  FutureOr<void> _onAddStudent(
      _AddStudent event, Emitter<StudentState> emit) async {
    emit(StudentState.idle(isLoading: true, students: state.students));
    await _addStudentUseCase
        .call(
            param:
                tuple.Tuple2<Student, String>(event.student, event.parentName))
        .then(
          (value) => value.fold(
            (l) => emit(
                StudentState.idle(isLoading: false, students: state.students)),
            (r) {
              List<Student> tempList = state.students.toList();
              tempList.add(r.student);
              return emit(
                  StudentState.idle(isLoading: false, students: tempList));
            },
          ),
        );

    getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
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
            (l) => emit(
                StudentState.idle(isLoading: false, students: state.students)),
            (r) =>
                emit(StudentState.idle(isLoading: false, students: r.students)),
          ),
        );
  }

  FutureOr<void> _onUpdateStudent(
      _UpdateStudent event, Emitter<StudentState> emit) async {
    emit(StudentState.idle(isLoading: true, students: state.students));
    await _updateStudentUseCase
        .call(param: tuple.Tuple1<Student>(event.student))
        .then(
          (value) => value.fold(
            (l) => emit(
              StudentState.idle(
                isLoading: false,
                students: state.students,
              ),
            ),
            (r) {
              List<Student> tempList = state.students.toList();
              tempList[tempList
                  .map((e) => e.studentId)
                  .toList()
                  .indexOf(r.student.studentId)] = r.student;
              emit(StudentState.idle(isLoading: false, students: tempList));
            },
          ),
        );

    getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
  }

  FutureOr<void> _onRemoveStudent(
      _RemoveStudent event, Emitter<StudentState> emit) async {
    emit(StudentState.idle(isLoading: true, students: state.students));
    try {
      await _removeStudentUseCase
          .call(param: tuple.Tuple1<int>(event.studentId))
          .then(
            (value) => value.fold(
              (l) => emit(StudentState.idle(
                  isLoading: false, students: state.students)),
              (r) {
                List<Student> tempList = state.students.toList();
                tempList.removeAt(tempList
                    .map((e) => e.studentId)
                    .toList()
                    .indexOf(event.studentId));
                emit(StudentState.idle(isLoading: false, students: tempList));
              },
            ),
          );

      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    } catch (e) {
      emit(StudentState.idle(isLoading: false, students: state.students));

      getIt.get<AppRouter>().popUntilRouteWithName('ClassDetailsRoute');
    }
  }
}
