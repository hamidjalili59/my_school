import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/constants/general_constants.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/config/utils/function_helper.dart';
import 'package:my_school/src/features/auth/domain/models/auth_types.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';
import 'package:my_school/src/features/role_call/domain/use_cases/add_rollcall_use_case.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/injectable/injectable.dart';
import 'package:my_school/src/presentation/student/bloc/student/student_bloc.dart';

part 'class_rollcall_state.dart';
part 'class_rollcall_event.dart';
part 'class_rollcall_bloc.freezed.dart';

@injectable
class ClassRollcallBloc extends Bloc<ClassRollcallEvent, ClassRollcallState> {
  final AddRollcallUseCase _addRollCallUsecase;
  ClassRollcallBloc(this._addRollCallUsecase)
      : super(const ClassRollcallState.idle()) {
    on<_SetRollcalls>(_onSetRollcalls);
    on<_SubmitRollcalls>(_onSubmitRollcalls);
    on<_GetStudents>(_onGetStudents);
    add(const _GetStudents());
  }
  @override
  void onEvent(ClassRollcallEvent event) {
    FunctionHelper()
        .logMessage('>>>>> RollCall Class Bloc event: ${event.toString()}');
    super.onEvent(event);
  }

  FutureOr<void> _onSubmitRollcalls(
      _SubmitRollcalls event, Emitter<ClassRollcallState> emit) async {
    emit(state.copyWith(isLoading: true));
    await _addRollCallUsecase
        .call(
          param: tuple.Tuple1<List<Rollcall>>(state.rollcalls),
        )
        .then((value) => value.fold(
              (l) {
                emit(state.copyWith(isLoading: false));
                ScaffoldMessenger.of(
                        getIt.get<AppRouter>().navigatorKey.currentContext!)
                    .showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.redAccent,
                    content: Text(
                      'متاسفانه حضور غیاب ثبت نشد دوباره تلاش کنید',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(getIt
                              .get<AppRouter>()
                              .navigatorKey
                              .currentContext!)
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
                ScaffoldMessenger.of(
                        getIt.get<AppRouter>().navigatorKey.currentContext!)
                    .showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.greenAccent,
                    content: Text(
                      'با موفقیت ثبت شد',
                      textDirection: TextDirection.rtl,
                      style: Theme.of(getIt
                              .get<AppRouter>()
                              .navigatorKey
                              .currentContext!)
                          .textTheme
                          .labelLarge!
                          .copyWith(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w800),
                    ),
                  ),
                );
                emit(state.copyWith(isLoading: false));

                getIt.get<AppRouter>().pop();
              },
            ));
  }

  FutureOr<void> _onSetRollcalls(
      _SetRollcalls event, Emitter<ClassRollcallState> emit) {
    List<Rollcall> tempRollcall = state.rollcalls.toList();
    tempRollcall[event.studentIndex] =
        tempRollcall[event.studentIndex].copyWith(
      absent: !tempRollcall[event.studentIndex].absent,
    );
    emit(state.copyWith(rollcalls: tempRollcall));
  }

  FutureOr<void> _onGetStudents(
      _GetStudents event, Emitter<ClassRollcallState> emit) {
    if (GeneralConstants.userType == UserType.teacher) {
      emit(ClassRollcallState.idle(
          students: getIt.get<StudentBloc>().state.students, isLoading: true));
      int zang = 1;
      DateTime timeNow = DateTime.now();
      if (9.00 >= timeNow.hour && timeNow.hour >= 7) {
        zang = 1;
      } else if (10.30 >= timeNow.hour && timeNow.hour >= 9.01) {
        zang = 2;
      } else if (12.30 >= timeNow.hour && timeNow.hour >= 10.31) {
        zang = 3;
      } else if (14.30 >= timeNow.hour && timeNow.hour >= 12.31) {
        zang = 4;
      } else {
        zang = 5;
      }
      List<Rollcall> tempRollCalls = List<Rollcall>.generate(
          state.students.length,
          (index) => Rollcall(
                absent: true,
                classId: getIt.get<Classroom>().classID,
                studentId: state.students[index].studentId,
                classTime: zang,
              ));
      emit(state.copyWith(rollcalls: tempRollCalls, isLoading: false));
    }
  }
}
