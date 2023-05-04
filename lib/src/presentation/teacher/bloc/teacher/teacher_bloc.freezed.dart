// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'teacher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Teacher> get teachers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Teacher> teachers) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Teacher> teachers)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Teacher> teachers)? idle,
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
  $TeacherStateCopyWith<TeacherState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherStateCopyWith<$Res> {
  factory $TeacherStateCopyWith(
          TeacherState value, $Res Function(TeacherState) then) =
      _$TeacherStateCopyWithImpl<$Res, TeacherState>;
  @useResult
  $Res call({bool isLoading, List<Teacher> teachers});
}

/// @nodoc
class _$TeacherStateCopyWithImpl<$Res, $Val extends TeacherState>
    implements $TeacherStateCopyWith<$Res> {
  _$TeacherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? teachers = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      teachers: null == teachers
          ? _value.teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<Teacher>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $TeacherStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Teacher> teachers});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$TeacherStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? teachers = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      teachers: null == teachers
          ? _value._teachers
          : teachers // ignore: cast_nullable_to_non_nullable
              as List<Teacher>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final List<Teacher> teachers = const []})
      : _teachers = teachers;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Teacher> _teachers;
  @override
  @JsonKey()
  List<Teacher> get teachers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teachers);
  }

  @override
  String toString() {
    return 'TeacherState.idle(isLoading: $isLoading, teachers: $teachers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._teachers, _teachers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_teachers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Teacher> teachers) idle,
  }) {
    return idle(isLoading, teachers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Teacher> teachers)? idle,
  }) {
    return idle?.call(isLoading, teachers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Teacher> teachers)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, teachers);
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

abstract class _Idle implements TeacherState {
  const factory _Idle({final bool isLoading, final List<Teacher> teachers}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Teacher> get teachers;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int teacherId) getClasses,
    required TResult Function(Teacher teacher) addTeacher,
    required TResult Function(Teacher teacher) updateTeacher,
    required TResult Function(int schoolId) getTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int teacherId)? getClasses,
    TResult? Function(Teacher teacher)? addTeacher,
    TResult? Function(Teacher teacher)? updateTeacher,
    TResult? Function(int schoolId)? getTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int teacherId)? getClasses,
    TResult Function(Teacher teacher)? addTeacher,
    TResult Function(Teacher teacher)? updateTeacher,
    TResult Function(int schoolId)? getTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddTeacher value) addTeacher,
    required TResult Function(_UpdateTeacher value) updateTeacher,
    required TResult Function(_GetTeachers value) getTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddTeacher value)? addTeacher,
    TResult? Function(_UpdateTeacher value)? updateTeacher,
    TResult? Function(_GetTeachers value)? getTeachers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddTeacher value)? addTeacher,
    TResult Function(_UpdateTeacher value)? updateTeacher,
    TResult Function(_GetTeachers value)? getTeachers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherEventCopyWith<$Res> {
  factory $TeacherEventCopyWith(
          TeacherEvent value, $Res Function(TeacherEvent) then) =
      _$TeacherEventCopyWithImpl<$Res, TeacherEvent>;
}

/// @nodoc
class _$TeacherEventCopyWithImpl<$Res, $Val extends TeacherEvent>
    implements $TeacherEventCopyWith<$Res> {
  _$TeacherEventCopyWithImpl(this._value, this._then);

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
  $Res call({int teacherId});
}

/// @nodoc
class __$$_GetClassesCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$_GetClasses>
    implements _$$_GetClassesCopyWith<$Res> {
  __$$_GetClassesCopyWithImpl(
      _$_GetClasses _value, $Res Function(_$_GetClasses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
  }) {
    return _then(_$_GetClasses(
      null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetClasses implements _GetClasses {
  const _$_GetClasses(this.teacherId);

  @override
  final int teacherId;

  @override
  String toString() {
    return 'TeacherEvent.getClasses(teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClasses &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      __$$_GetClassesCopyWithImpl<_$_GetClasses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int teacherId) getClasses,
    required TResult Function(Teacher teacher) addTeacher,
    required TResult Function(Teacher teacher) updateTeacher,
    required TResult Function(int schoolId) getTeachers,
  }) {
    return getClasses(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int teacherId)? getClasses,
    TResult? Function(Teacher teacher)? addTeacher,
    TResult? Function(Teacher teacher)? updateTeacher,
    TResult? Function(int schoolId)? getTeachers,
  }) {
    return getClasses?.call(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int teacherId)? getClasses,
    TResult Function(Teacher teacher)? addTeacher,
    TResult Function(Teacher teacher)? updateTeacher,
    TResult Function(int schoolId)? getTeachers,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddTeacher value) addTeacher,
    required TResult Function(_UpdateTeacher value) updateTeacher,
    required TResult Function(_GetTeachers value) getTeachers,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddTeacher value)? addTeacher,
    TResult? Function(_UpdateTeacher value)? updateTeacher,
    TResult? Function(_GetTeachers value)? getTeachers,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddTeacher value)? addTeacher,
    TResult Function(_UpdateTeacher value)? updateTeacher,
    TResult Function(_GetTeachers value)? getTeachers,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements TeacherEvent {
  const factory _GetClasses(final int teacherId) = _$_GetClasses;

  int get teacherId;
  @JsonKey(ignore: true)
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddTeacherCopyWith<$Res> {
  factory _$$_AddTeacherCopyWith(
          _$_AddTeacher value, $Res Function(_$_AddTeacher) then) =
      __$$_AddTeacherCopyWithImpl<$Res>;
  @useResult
  $Res call({Teacher teacher});
}

/// @nodoc
class __$$_AddTeacherCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$_AddTeacher>
    implements _$$_AddTeacherCopyWith<$Res> {
  __$$_AddTeacherCopyWithImpl(
      _$_AddTeacher _value, $Res Function(_$_AddTeacher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
  }) {
    return _then(_$_AddTeacher(
      null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher,
    ));
  }
}

/// @nodoc

class _$_AddTeacher implements _AddTeacher {
  const _$_AddTeacher(this.teacher);

  @override
  final Teacher teacher;

  @override
  String toString() {
    return 'TeacherEvent.addTeacher(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddTeacher &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddTeacherCopyWith<_$_AddTeacher> get copyWith =>
      __$$_AddTeacherCopyWithImpl<_$_AddTeacher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int teacherId) getClasses,
    required TResult Function(Teacher teacher) addTeacher,
    required TResult Function(Teacher teacher) updateTeacher,
    required TResult Function(int schoolId) getTeachers,
  }) {
    return addTeacher(teacher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int teacherId)? getClasses,
    TResult? Function(Teacher teacher)? addTeacher,
    TResult? Function(Teacher teacher)? updateTeacher,
    TResult? Function(int schoolId)? getTeachers,
  }) {
    return addTeacher?.call(teacher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int teacherId)? getClasses,
    TResult Function(Teacher teacher)? addTeacher,
    TResult Function(Teacher teacher)? updateTeacher,
    TResult Function(int schoolId)? getTeachers,
    required TResult orElse(),
  }) {
    if (addTeacher != null) {
      return addTeacher(teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddTeacher value) addTeacher,
    required TResult Function(_UpdateTeacher value) updateTeacher,
    required TResult Function(_GetTeachers value) getTeachers,
  }) {
    return addTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddTeacher value)? addTeacher,
    TResult? Function(_UpdateTeacher value)? updateTeacher,
    TResult? Function(_GetTeachers value)? getTeachers,
  }) {
    return addTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddTeacher value)? addTeacher,
    TResult Function(_UpdateTeacher value)? updateTeacher,
    TResult Function(_GetTeachers value)? getTeachers,
    required TResult orElse(),
  }) {
    if (addTeacher != null) {
      return addTeacher(this);
    }
    return orElse();
  }
}

abstract class _AddTeacher implements TeacherEvent {
  const factory _AddTeacher(final Teacher teacher) = _$_AddTeacher;

  Teacher get teacher;
  @JsonKey(ignore: true)
  _$$_AddTeacherCopyWith<_$_AddTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateTeacherCopyWith<$Res> {
  factory _$$_UpdateTeacherCopyWith(
          _$_UpdateTeacher value, $Res Function(_$_UpdateTeacher) then) =
      __$$_UpdateTeacherCopyWithImpl<$Res>;
  @useResult
  $Res call({Teacher teacher});
}

/// @nodoc
class __$$_UpdateTeacherCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$_UpdateTeacher>
    implements _$$_UpdateTeacherCopyWith<$Res> {
  __$$_UpdateTeacherCopyWithImpl(
      _$_UpdateTeacher _value, $Res Function(_$_UpdateTeacher) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = null,
  }) {
    return _then(_$_UpdateTeacher(
      null == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher,
    ));
  }
}

/// @nodoc

class _$_UpdateTeacher implements _UpdateTeacher {
  const _$_UpdateTeacher(this.teacher);

  @override
  final Teacher teacher;

  @override
  String toString() {
    return 'TeacherEvent.updateTeacher(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateTeacher &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateTeacherCopyWith<_$_UpdateTeacher> get copyWith =>
      __$$_UpdateTeacherCopyWithImpl<_$_UpdateTeacher>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int teacherId) getClasses,
    required TResult Function(Teacher teacher) addTeacher,
    required TResult Function(Teacher teacher) updateTeacher,
    required TResult Function(int schoolId) getTeachers,
  }) {
    return updateTeacher(teacher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int teacherId)? getClasses,
    TResult? Function(Teacher teacher)? addTeacher,
    TResult? Function(Teacher teacher)? updateTeacher,
    TResult? Function(int schoolId)? getTeachers,
  }) {
    return updateTeacher?.call(teacher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int teacherId)? getClasses,
    TResult Function(Teacher teacher)? addTeacher,
    TResult Function(Teacher teacher)? updateTeacher,
    TResult Function(int schoolId)? getTeachers,
    required TResult orElse(),
  }) {
    if (updateTeacher != null) {
      return updateTeacher(teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddTeacher value) addTeacher,
    required TResult Function(_UpdateTeacher value) updateTeacher,
    required TResult Function(_GetTeachers value) getTeachers,
  }) {
    return updateTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddTeacher value)? addTeacher,
    TResult? Function(_UpdateTeacher value)? updateTeacher,
    TResult? Function(_GetTeachers value)? getTeachers,
  }) {
    return updateTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddTeacher value)? addTeacher,
    TResult Function(_UpdateTeacher value)? updateTeacher,
    TResult Function(_GetTeachers value)? getTeachers,
    required TResult orElse(),
  }) {
    if (updateTeacher != null) {
      return updateTeacher(this);
    }
    return orElse();
  }
}

abstract class _UpdateTeacher implements TeacherEvent {
  const factory _UpdateTeacher(final Teacher teacher) = _$_UpdateTeacher;

  Teacher get teacher;
  @JsonKey(ignore: true)
  _$$_UpdateTeacherCopyWith<_$_UpdateTeacher> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTeachersCopyWith<$Res> {
  factory _$$_GetTeachersCopyWith(
          _$_GetTeachers value, $Res Function(_$_GetTeachers) then) =
      __$$_GetTeachersCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetTeachersCopyWithImpl<$Res>
    extends _$TeacherEventCopyWithImpl<$Res, _$_GetTeachers>
    implements _$$_GetTeachersCopyWith<$Res> {
  __$$_GetTeachersCopyWithImpl(
      _$_GetTeachers _value, $Res Function(_$_GetTeachers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetTeachers(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTeachers implements _GetTeachers {
  const _$_GetTeachers(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'TeacherEvent.getTeachers(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTeachers &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTeachersCopyWith<_$_GetTeachers> get copyWith =>
      __$$_GetTeachersCopyWithImpl<_$_GetTeachers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int teacherId) getClasses,
    required TResult Function(Teacher teacher) addTeacher,
    required TResult Function(Teacher teacher) updateTeacher,
    required TResult Function(int schoolId) getTeachers,
  }) {
    return getTeachers(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int teacherId)? getClasses,
    TResult? Function(Teacher teacher)? addTeacher,
    TResult? Function(Teacher teacher)? updateTeacher,
    TResult? Function(int schoolId)? getTeachers,
  }) {
    return getTeachers?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int teacherId)? getClasses,
    TResult Function(Teacher teacher)? addTeacher,
    TResult Function(Teacher teacher)? updateTeacher,
    TResult Function(int schoolId)? getTeachers,
    required TResult orElse(),
  }) {
    if (getTeachers != null) {
      return getTeachers(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_AddTeacher value) addTeacher,
    required TResult Function(_UpdateTeacher value) updateTeacher,
    required TResult Function(_GetTeachers value) getTeachers,
  }) {
    return getTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_AddTeacher value)? addTeacher,
    TResult? Function(_UpdateTeacher value)? updateTeacher,
    TResult? Function(_GetTeachers value)? getTeachers,
  }) {
    return getTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_AddTeacher value)? addTeacher,
    TResult Function(_UpdateTeacher value)? updateTeacher,
    TResult Function(_GetTeachers value)? getTeachers,
    required TResult orElse(),
  }) {
    if (getTeachers != null) {
      return getTeachers(this);
    }
    return orElse();
  }
}

abstract class _GetTeachers implements TeacherEvent {
  const factory _GetTeachers(final int schoolId) = _$_GetTeachers;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetTeachersCopyWith<_$_GetTeachers> get copyWith =>
      throw _privateConstructorUsedError;
}
