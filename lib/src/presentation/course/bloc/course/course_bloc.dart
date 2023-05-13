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
import 'package:my_school/src/features/course/domain/use_cases/remove_course_use_case.dart';
import 'package:my_school/src/features/course/domain/use_cases/update_course_use_case.dart';
import 'package:my_school/src/injectable/injectable.dart';

part 'course_state.dart';
part 'course_event.dart';
part 'course_bloc.freezed.dart';

@lazySingleton
class CourseBloc extends Bloc<CourseEvent, CourseState> {
  final GetCoursesUseCase _getCoursesUseCase;
  final UpdateCourseUseCase _updateCourseUseCase;
  final AddCourseUseCase _addCourseUseCase;
  final RemoveCourseUseCase _removeCourseUseCase;
  CourseBloc(
    this._getCoursesUseCase,
    this._addCourseUseCase,
    this._updateCourseUseCase,
    this._removeCourseUseCase,
  ) : super(const CourseState.idle(isLoading: false)) {
    on<_GetCourses>(_onGetCourses);
    on<_AddCourse>(_onAddCourse);
    on<_UpdateCourse>(_onUpdateCourse);
    on<_RemoveCourse>(_onRemoveCourse);
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
            (l) => emit(
                CourseState.idle(isLoading: false, courses: state.courses)),
            (r) => emit(CourseState.idle(isLoading: false, courses: r.courses)),
          ),
        );
  }

  FutureOr<void> _onAddCourse(
      _AddCourse event, Emitter<CourseState> emit) async {
    emit(CourseState.idle(isLoading: true, courses: state.courses));
    await _addCourseUseCase.call(param: tuple.Tuple1(event.courseName)).then(
          (value) => value.fold(
            (l) => emit(
                CourseState.idle(isLoading: false, courses: state.courses)),
            (r) {
              List<Course> tempList = state.courses.toList();
              tempList.add(r.course);
              emit(CourseState.idle(isLoading: false, courses: tempList));
              getIt.get<AppRouter>().pop();
            },
          ),
        );
  }

  FutureOr<void> _onUpdateCourse(
      _UpdateCourse event, Emitter<CourseState> emit) async {
    emit(CourseState.idle(isLoading: true, courses: state.courses));
    await _updateCourseUseCase
        .call(
            param: tuple.Tuple2<int, String>(
                event.course.courseId, event.course.courseName))
        .then(
          (value) => value.fold(
            (l) => emit(
                CourseState.idle(isLoading: false, courses: state.courses)),
            (r) {
              add(CourseEvent.getCourses(
                int.parse(getIt.get<OtpHandshakeResponse>().token),
              ));
              getIt.get<AppRouter>().pop();
            },
          ),
        );
  }

  FutureOr<void> _onRemoveCourse(
      _RemoveCourse event, Emitter<CourseState> emit) async {
    emit(CourseState.idle(isLoading: true, courses: state.courses));
    try {
      await _removeCourseUseCase
          .call(param: tuple.Tuple1<int>(event.courseId))
          .then(
            (value) => value.fold(
              (l) => emit(
                  CourseState.idle(isLoading: false, courses: state.courses)),
              (r) {
                List<Course> tempList = state.courses.toList();
                tempList.removeAt(tempList
                    .map((e) => e.courseId)
                    .toList()
                    .indexOf(event.courseId));
                emit(CourseState.idle(isLoading: false, courses: tempList));
              },
            ),
          );
      getIt.get<AppRouter>().pop();
    } catch (e) {
      emit(CourseState.idle(isLoading: false, courses: state.courses));
      getIt.get<AppRouter>().pop();
    }
  }
}
