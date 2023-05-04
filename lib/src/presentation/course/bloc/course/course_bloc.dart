import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:my_school/src/config/routes/router.dart';
import 'package:my_school/src/features/auth/domain/models/otp_handshake_response.dart';
import 'package:my_school/src/features/course/domain/models/course_model/course.dart';
import 'package:my_school/src/features/core/models/tuple.dart' as tuple;
import 'package:my_school/src/features/course/domain/use_cases/add_course_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/get_courses_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'course_state.dart';
part 'course_event.dart';
part 'course_bloc.freezed.dart';

@lazySingleton
class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final GetCoursesUseCase _getCoursesUseCase;
  final AddCourseUseCase _addCourseUseCase;
  CourseBloc(this._getCoursesUseCase, this._addCourseUseCase)
      : super(const CourseState.idle(isLoading: false)) {
    on<_GetCourses>(_onGetCourses);
    on<_AddCourse>(_onAddCourse);
    add(_GetCourses(
      int.parse(getIt.get<OtpHandshakeResponse>().token),
    ));
  }

  FutureOr<void> _onGetCourses(
      _GetCourses event, Emitter<CourseState> emit) async {
    emit(const CourseState.idle(isLoading: true));
    await _getCoursesUseCase
        .call(param: tuple.Tuple1<int>(event.schoolId))
        .then(
          (value) => value.fold(
            (l) {},
            (r) {
              if (!getIt.isRegistered<List<Course>>()) {
                getIt.registerSingleton<List<Course>>(r.courses);
              }
              emit(CourseState.idle(isLoading: false, courses: r.courses));
            },
          ),
        );
  }

  FutureOr<void> _onAddCourse(
      _AddCourse event, Emitter<CourseState> emit) async {
    emit(const CourseState.idle(isLoading: true));
    await _addCourseUseCase.call(param: tuple.Tuple1(event.courseName)).then(
          (value) => value.fold(
            (l) => null,
            (r) {
              List<Course> tempList = getIt.get<List<Course>>();
              tempList.add(r.course);
              emit(CourseState.idle(isLoading: false, courses: tempList));
              getIt.get<AppRouter>().pop();
            },
          ),
        );
  }
}