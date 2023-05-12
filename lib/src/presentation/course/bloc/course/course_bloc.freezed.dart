// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourseState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Course> get courses => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Course> courses) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Course> courses)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Course> courses)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseStateCopyWith<CourseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseStateCopyWith<$Res> {
  factory $CourseStateCopyWith(
          CourseState value, $Res Function(CourseState) then) =
      _$CourseStateCopyWithImpl<$Res, CourseState>;
  @useResult
  $Res call({bool isLoading, List<Course> courses});
}

/// @nodoc
class _$CourseStateCopyWithImpl<$Res, $Val extends CourseState>
    implements $CourseStateCopyWith<$Res> {
  _$CourseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? courses = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value.courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $CourseStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Course> courses});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$CourseStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? courses = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      courses: null == courses
          ? _value._courses
          : courses // ignore: cast_nullable_to_non_nullable
              as List<Course>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.isLoading = false, final List<Course> courses = const []})
      : _courses = courses;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Course> _courses;
  @override
  @JsonKey()
  List<Course> get courses {
    if (_courses is EqualUnmodifiableListView) return _courses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_courses);
  }

  @override
  String toString() {
    return 'CourseState.idle(isLoading: $isLoading, courses: $courses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._courses, _courses));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_courses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Course> courses) idle,
  }) {
    return idle(isLoading, courses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Course> courses)? idle,
  }) {
    return idle?.call(isLoading, courses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Course> courses)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, courses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements CourseState {
  const factory _Idle({final bool isLoading, final List<Course> courses}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Course> get courses;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CourseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int schoolId) getClasses,
    required TResult Function(String courseName) addCourse,
    required TResult Function(Course course) updateCourse,
    required TResult Function(int schoolId) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(String courseName)? addCourse,
    TResult? Function(Course course)? updateCourse,
    TResult? Function(int schoolId)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int schoolId)? getClasses,
    TResult Function(String courseName)? addCourse,
    TResult Function(Course course)? updateCourse,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddCourse value) addCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_GetCourses value) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddCourse value)? addCourse,
    TResult? Function(_UpdateCourse value)? updateCourse,
    TResult? Function(_GetCourses value)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddCourse value)? addCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseEventCopyWith<$Res> {
  factory $CourseEventCopyWith(
          CourseEvent value, $Res Function(CourseEvent) then) =
      _$CourseEventCopyWithImpl<$Res, CourseEvent>;
}

/// @nodoc
class _$CourseEventCopyWithImpl<$Res, $Val extends CourseEvent>
    implements $CourseEventCopyWith<$Res> {
  _$CourseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetClassesCopyWith<$Res> {
  factory _$$_GetClassesCopyWith(
          _$_GetClasses value, $Res Function(_$_GetClasses) then) =
      __$$_GetClassesCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetClassesCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$_GetClasses>
    implements _$$_GetClassesCopyWith<$Res> {
  __$$_GetClassesCopyWithImpl(
      _$_GetClasses _value, $Res Function(_$_GetClasses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetClasses(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetClasses implements _GetClasses {
  const _$_GetClasses(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'CourseEvent.getClasses(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClasses &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      __$$_GetClassesCopyWithImpl<_$_GetClasses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int schoolId) getClasses,
    required TResult Function(String courseName) addCourse,
    required TResult Function(Course course) updateCourse,
    required TResult Function(int schoolId) getCourses,
  }) {
    return getClasses(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(String courseName)? addCourse,
    TResult? Function(Course course)? updateCourse,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return getClasses?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int schoolId)? getClasses,
    TResult Function(String courseName)? addCourse,
    TResult Function(Course course)? updateCourse,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddCourse value) addCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddCourse value)? addCourse,
    TResult? Function(_UpdateCourse value)? updateCourse,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddCourse value)? addCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements CourseEvent {
  const factory _GetClasses(final int schoolId) = _$_GetClasses;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCourseCopyWith<$Res> {
  factory _$$_AddCourseCopyWith(
          _$_AddCourse value, $Res Function(_$_AddCourse) then) =
      __$$_AddCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({String courseName});
}

/// @nodoc
class __$$_AddCourseCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$_AddCourse>
    implements _$$_AddCourseCopyWith<$Res> {
  __$$_AddCourseCopyWithImpl(
      _$_AddCourse _value, $Res Function(_$_AddCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseName = null,
  }) {
    return _then(_$_AddCourse(
      null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddCourse implements _AddCourse {
  const _$_AddCourse(this.courseName);

  @override
  final String courseName;

  @override
  String toString() {
    return 'CourseEvent.addCourse(courseName: $courseName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddCourse &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCourseCopyWith<_$_AddCourse> get copyWith =>
      __$$_AddCourseCopyWithImpl<_$_AddCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int schoolId) getClasses,
    required TResult Function(String courseName) addCourse,
    required TResult Function(Course course) updateCourse,
    required TResult Function(int schoolId) getCourses,
  }) {
    return addCourse(courseName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(String courseName)? addCourse,
    TResult? Function(Course course)? updateCourse,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return addCourse?.call(courseName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int schoolId)? getClasses,
    TResult Function(String courseName)? addCourse,
    TResult Function(Course course)? updateCourse,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(courseName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddCourse value) addCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return addCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddCourse value)? addCourse,
    TResult? Function(_UpdateCourse value)? updateCourse,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return addCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddCourse value)? addCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (addCourse != null) {
      return addCourse(this);
    }
    return orElse();
  }
}

abstract class _AddCourse implements CourseEvent {
  const factory _AddCourse(final String courseName) = _$_AddCourse;

  String get courseName;
  @JsonKey(ignore: true)
  _$$_AddCourseCopyWith<_$_AddCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCourseCopyWith<$Res> {
  factory _$$_UpdateCourseCopyWith(
          _$_UpdateCourse value, $Res Function(_$_UpdateCourse) then) =
      __$$_UpdateCourseCopyWithImpl<$Res>;
  @useResult
  $Res call({Course course});

  $CourseCopyWith<$Res> get course;
}

/// @nodoc
class __$$_UpdateCourseCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$_UpdateCourse>
    implements _$$_UpdateCourseCopyWith<$Res> {
  __$$_UpdateCourseCopyWithImpl(
      _$_UpdateCourse _value, $Res Function(_$_UpdateCourse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = null,
  }) {
    return _then(_$_UpdateCourse(
      null == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res> get course {
    return $CourseCopyWith<$Res>(_value.course, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$_UpdateCourse implements _UpdateCourse {
  const _$_UpdateCourse(this.course);

  @override
  final Course course;

  @override
  String toString() {
    return 'CourseEvent.updateCourse(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCourse &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCourseCopyWith<_$_UpdateCourse> get copyWith =>
      __$$_UpdateCourseCopyWithImpl<_$_UpdateCourse>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int schoolId) getClasses,
    required TResult Function(String courseName) addCourse,
    required TResult Function(Course course) updateCourse,
    required TResult Function(int schoolId) getCourses,
  }) {
    return updateCourse(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(String courseName)? addCourse,
    TResult? Function(Course course)? updateCourse,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return updateCourse?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int schoolId)? getClasses,
    TResult Function(String courseName)? addCourse,
    TResult Function(Course course)? updateCourse,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddCourse value) addCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return updateCourse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddCourse value)? addCourse,
    TResult? Function(_UpdateCourse value)? updateCourse,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return updateCourse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddCourse value)? addCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (updateCourse != null) {
      return updateCourse(this);
    }
    return orElse();
  }
}

abstract class _UpdateCourse implements CourseEvent {
  const factory _UpdateCourse(final Course course) = _$_UpdateCourse;

  Course get course;
  @JsonKey(ignore: true)
  _$$_UpdateCourseCopyWith<_$_UpdateCourse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCoursesCopyWith<$Res> {
  factory _$$_GetCoursesCopyWith(
          _$_GetCourses value, $Res Function(_$_GetCourses) then) =
      __$$_GetCoursesCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetCoursesCopyWithImpl<$Res>
    extends _$CourseEventCopyWithImpl<$Res, _$_GetCourses>
    implements _$$_GetCoursesCopyWith<$Res> {
  __$$_GetCoursesCopyWithImpl(
      _$_GetCourses _value, $Res Function(_$_GetCourses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetCourses(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCourses implements _GetCourses {
  const _$_GetCourses(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'CourseEvent.getCourses(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCourses &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCoursesCopyWith<_$_GetCourses> get copyWith =>
      __$$_GetCoursesCopyWithImpl<_$_GetCourses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int schoolId) getClasses,
    required TResult Function(String courseName) addCourse,
    required TResult Function(Course course) updateCourse,
    required TResult Function(int schoolId) getCourses,
  }) {
    return getCourses(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(String courseName)? addCourse,
    TResult? Function(Course course)? updateCourse,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return getCourses?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int schoolId)? getClasses,
    TResult Function(String courseName)? addCourse,
    TResult Function(Course course)? updateCourse,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddCourse value) addCourse,
    required TResult Function(_UpdateCourse value) updateCourse,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddCourse value)? addCourse,
    TResult? Function(_UpdateCourse value)? updateCourse,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddCourse value)? addCourse,
    TResult Function(_UpdateCourse value)? updateCourse,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class _GetCourses implements CourseEvent {
  const factory _GetCourses(final int schoolId) = _$_GetCourses;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetCoursesCopyWith<_$_GetCourses> get copyWith =>
      throw _privateConstructorUsedError;
}
