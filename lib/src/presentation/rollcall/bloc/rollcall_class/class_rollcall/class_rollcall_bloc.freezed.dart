// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'class_rollcall_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassRollcallState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Rollcall> get rollcalls => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)?
        idle,
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
  $ClassRollcallStateCopyWith<ClassRollcallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRollcallStateCopyWith<$Res> {
  factory $ClassRollcallStateCopyWith(
          ClassRollcallState value, $Res Function(ClassRollcallState) then) =
      _$ClassRollcallStateCopyWithImpl<$Res, ClassRollcallState>;
  @useResult
  $Res call({bool isLoading, List<Rollcall> rollcalls, List<Student> students});
}

/// @nodoc
class _$ClassRollcallStateCopyWithImpl<$Res, $Val extends ClassRollcallState>
    implements $ClassRollcallStateCopyWith<$Res> {
  _$ClassRollcallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rollcalls = null,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rollcalls: null == rollcalls
          ? _value.rollcalls
          : rollcalls // ignore: cast_nullable_to_non_nullable
              as List<Rollcall>,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $ClassRollcallStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Rollcall> rollcalls, List<Student> students});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$ClassRollcallStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rollcalls = null,
    Object? students = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      rollcalls: null == rollcalls
          ? _value._rollcalls
          : rollcalls // ignore: cast_nullable_to_non_nullable
              as List<Rollcall>,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false,
      final List<Rollcall> rollcalls = const [],
      final List<Student> students = const []})
      : _rollcalls = rollcalls,
        _students = students;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Rollcall> _rollcalls;
  @override
  @JsonKey()
  List<Rollcall> get rollcalls {
    if (_rollcalls is EqualUnmodifiableListView) return _rollcalls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rollcalls);
  }

  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'ClassRollcallState.idle(isLoading: $isLoading, rollcalls: $rollcalls, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._rollcalls, _rollcalls) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_rollcalls),
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)
        idle,
  }) {
    return idle(isLoading, rollcalls, students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)?
        idle,
  }) {
    return idle?.call(isLoading, rollcalls, students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<Rollcall> rollcalls, List<Student> students)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, rollcalls, students);
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

abstract class _Idle implements ClassRollcallState {
  const factory _Idle(
      {final bool isLoading,
      final List<Rollcall> rollcalls,
      final List<Student> students}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Rollcall> get rollcalls;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassRollcallEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentIndex) setRollcalls,
    required TResult Function() submitRollcalls,
    required TResult Function() getStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentIndex)? setRollcalls,
    TResult? Function()? submitRollcalls,
    TResult? Function()? getStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentIndex)? setRollcalls,
    TResult Function()? submitRollcalls,
    TResult Function()? getStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRollcalls value) setRollcalls,
    required TResult Function(_SubmitRollcalls value) submitRollcalls,
    required TResult Function(_GetStudents value) getStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRollcalls value)? setRollcalls,
    TResult? Function(_SubmitRollcalls value)? submitRollcalls,
    TResult? Function(_GetStudents value)? getStudents,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRollcalls value)? setRollcalls,
    TResult Function(_SubmitRollcalls value)? submitRollcalls,
    TResult Function(_GetStudents value)? getStudents,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassRollcallEventCopyWith<$Res> {
  factory $ClassRollcallEventCopyWith(
          ClassRollcallEvent value, $Res Function(ClassRollcallEvent) then) =
      _$ClassRollcallEventCopyWithImpl<$Res, ClassRollcallEvent>;
}

/// @nodoc
class _$ClassRollcallEventCopyWithImpl<$Res, $Val extends ClassRollcallEvent>
    implements $ClassRollcallEventCopyWith<$Res> {
  _$ClassRollcallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SetRollcallsCopyWith<$Res> {
  factory _$$_SetRollcallsCopyWith(
          _$_SetRollcalls value, $Res Function(_$_SetRollcalls) then) =
      __$$_SetRollcallsCopyWithImpl<$Res>;
  @useResult
  $Res call({int studentIndex});
}

/// @nodoc
class __$$_SetRollcallsCopyWithImpl<$Res>
    extends _$ClassRollcallEventCopyWithImpl<$Res, _$_SetRollcalls>
    implements _$$_SetRollcallsCopyWith<$Res> {
  __$$_SetRollcallsCopyWithImpl(
      _$_SetRollcalls _value, $Res Function(_$_SetRollcalls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentIndex = null,
  }) {
    return _then(_$_SetRollcalls(
      null == studentIndex
          ? _value.studentIndex
          : studentIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SetRollcalls implements _SetRollcalls {
  const _$_SetRollcalls(this.studentIndex);

  @override
  final int studentIndex;

  @override
  String toString() {
    return 'ClassRollcallEvent.setRollcalls(studentIndex: $studentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SetRollcalls &&
            (identical(other.studentIndex, studentIndex) ||
                other.studentIndex == studentIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SetRollcallsCopyWith<_$_SetRollcalls> get copyWith =>
      __$$_SetRollcallsCopyWithImpl<_$_SetRollcalls>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentIndex) setRollcalls,
    required TResult Function() submitRollcalls,
    required TResult Function() getStudents,
  }) {
    return setRollcalls(studentIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentIndex)? setRollcalls,
    TResult? Function()? submitRollcalls,
    TResult? Function()? getStudents,
  }) {
    return setRollcalls?.call(studentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentIndex)? setRollcalls,
    TResult Function()? submitRollcalls,
    TResult Function()? getStudents,
    required TResult orElse(),
  }) {
    if (setRollcalls != null) {
      return setRollcalls(studentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRollcalls value) setRollcalls,
    required TResult Function(_SubmitRollcalls value) submitRollcalls,
    required TResult Function(_GetStudents value) getStudents,
  }) {
    return setRollcalls(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRollcalls value)? setRollcalls,
    TResult? Function(_SubmitRollcalls value)? submitRollcalls,
    TResult? Function(_GetStudents value)? getStudents,
  }) {
    return setRollcalls?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRollcalls value)? setRollcalls,
    TResult Function(_SubmitRollcalls value)? submitRollcalls,
    TResult Function(_GetStudents value)? getStudents,
    required TResult orElse(),
  }) {
    if (setRollcalls != null) {
      return setRollcalls(this);
    }
    return orElse();
  }
}

abstract class _SetRollcalls implements ClassRollcallEvent {
  const factory _SetRollcalls(final int studentIndex) = _$_SetRollcalls;

  int get studentIndex;
  @JsonKey(ignore: true)
  _$$_SetRollcallsCopyWith<_$_SetRollcalls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SubmitRollcallsCopyWith<$Res> {
  factory _$$_SubmitRollcallsCopyWith(
          _$_SubmitRollcalls value, $Res Function(_$_SubmitRollcalls) then) =
      __$$_SubmitRollcallsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SubmitRollcallsCopyWithImpl<$Res>
    extends _$ClassRollcallEventCopyWithImpl<$Res, _$_SubmitRollcalls>
    implements _$$_SubmitRollcallsCopyWith<$Res> {
  __$$_SubmitRollcallsCopyWithImpl(
      _$_SubmitRollcalls _value, $Res Function(_$_SubmitRollcalls) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SubmitRollcalls implements _SubmitRollcalls {
  const _$_SubmitRollcalls();

  @override
  String toString() {
    return 'ClassRollcallEvent.submitRollcalls()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SubmitRollcalls);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentIndex) setRollcalls,
    required TResult Function() submitRollcalls,
    required TResult Function() getStudents,
  }) {
    return submitRollcalls();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentIndex)? setRollcalls,
    TResult? Function()? submitRollcalls,
    TResult? Function()? getStudents,
  }) {
    return submitRollcalls?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentIndex)? setRollcalls,
    TResult Function()? submitRollcalls,
    TResult Function()? getStudents,
    required TResult orElse(),
  }) {
    if (submitRollcalls != null) {
      return submitRollcalls();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRollcalls value) setRollcalls,
    required TResult Function(_SubmitRollcalls value) submitRollcalls,
    required TResult Function(_GetStudents value) getStudents,
  }) {
    return submitRollcalls(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRollcalls value)? setRollcalls,
    TResult? Function(_SubmitRollcalls value)? submitRollcalls,
    TResult? Function(_GetStudents value)? getStudents,
  }) {
    return submitRollcalls?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRollcalls value)? setRollcalls,
    TResult Function(_SubmitRollcalls value)? submitRollcalls,
    TResult Function(_GetStudents value)? getStudents,
    required TResult orElse(),
  }) {
    if (submitRollcalls != null) {
      return submitRollcalls(this);
    }
    return orElse();
  }
}

abstract class _SubmitRollcalls implements ClassRollcallEvent {
  const factory _SubmitRollcalls() = _$_SubmitRollcalls;
}

/// @nodoc
abstract class _$$_GetStudentsCopyWith<$Res> {
  factory _$$_GetStudentsCopyWith(
          _$_GetStudents value, $Res Function(_$_GetStudents) then) =
      __$$_GetStudentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetStudentsCopyWithImpl<$Res>
    extends _$ClassRollcallEventCopyWithImpl<$Res, _$_GetStudents>
    implements _$$_GetStudentsCopyWith<$Res> {
  __$$_GetStudentsCopyWithImpl(
      _$_GetStudents _value, $Res Function(_$_GetStudents) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetStudents implements _GetStudents {
  const _$_GetStudents();

  @override
  String toString() {
    return 'ClassRollcallEvent.getStudents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetStudents);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentIndex) setRollcalls,
    required TResult Function() submitRollcalls,
    required TResult Function() getStudents,
  }) {
    return getStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentIndex)? setRollcalls,
    TResult? Function()? submitRollcalls,
    TResult? Function()? getStudents,
  }) {
    return getStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentIndex)? setRollcalls,
    TResult Function()? submitRollcalls,
    TResult Function()? getStudents,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SetRollcalls value) setRollcalls,
    required TResult Function(_SubmitRollcalls value) submitRollcalls,
    required TResult Function(_GetStudents value) getStudents,
  }) {
    return getStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SetRollcalls value)? setRollcalls,
    TResult? Function(_SubmitRollcalls value)? submitRollcalls,
    TResult? Function(_GetStudents value)? getStudents,
  }) {
    return getStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SetRollcalls value)? setRollcalls,
    TResult Function(_SubmitRollcalls value)? submitRollcalls,
    TResult Function(_GetStudents value)? getStudents,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents(this);
    }
    return orElse();
  }
}

abstract class _GetStudents implements ClassRollcallEvent {
  const factory _GetStudents() = _$_GetStudents;
}
