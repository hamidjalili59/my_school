// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_board_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreBoardState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Score> get scores => throw _privateConstructorUsedError;
  List<TextEditingController> get scoresNumeric =>
      throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)?
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
  $ScoreBoardStateCopyWith<ScoreBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreBoardStateCopyWith<$Res> {
  factory $ScoreBoardStateCopyWith(
          ScoreBoardState value, $Res Function(ScoreBoardState) then) =
      _$ScoreBoardStateCopyWithImpl<$Res, ScoreBoardState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Score> scores,
      List<TextEditingController> scoresNumeric,
      List<Student> students});
}

/// @nodoc
class _$ScoreBoardStateCopyWithImpl<$Res, $Val extends ScoreBoardState>
    implements $ScoreBoardStateCopyWith<$Res> {
  _$ScoreBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
    Object? scoresNumeric = null,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value.scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      scoresNumeric: null == scoresNumeric
          ? _value.scoresNumeric
          : scoresNumeric // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $ScoreBoardStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Score> scores,
      List<TextEditingController> scoresNumeric,
      List<Student> students});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$ScoreBoardStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
    Object? scoresNumeric = null,
    Object? students = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      scores: null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
      scoresNumeric: null == scoresNumeric
          ? _value._scoresNumeric
          : scoresNumeric // ignore: cast_nullable_to_non_nullable
              as List<TextEditingController>,
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
      final List<Score> scores = const [],
      final List<TextEditingController> scoresNumeric = const [],
      final List<Student> students = const []})
      : _scores = scores,
        _scoresNumeric = scoresNumeric,
        _students = students;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Score> _scores;
  @override
  @JsonKey()
  List<Score> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  final List<TextEditingController> _scoresNumeric;
  @override
  @JsonKey()
  List<TextEditingController> get scoresNumeric {
    if (_scoresNumeric is EqualUnmodifiableListView) return _scoresNumeric;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scoresNumeric);
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
    return 'ScoreBoardState.idle(isLoading: $isLoading, scores: $scores, scoresNumeric: $scoresNumeric, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._scores, _scores) &&
            const DeepCollectionEquality()
                .equals(other._scoresNumeric, _scoresNumeric) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_scores),
      const DeepCollectionEquality().hash(_scoresNumeric),
      const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)
        idle,
  }) {
    return idle(isLoading, scores, scoresNumeric, students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)?
        idle,
  }) {
    return idle?.call(isLoading, scores, scoresNumeric, students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Score> scores,
            List<TextEditingController> scoresNumeric, List<Student> students)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, scores, scoresNumeric, students);
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

abstract class _Idle implements ScoreBoardState {
  const factory _Idle(
      {final bool isLoading,
      final List<Score> scores,
      final List<TextEditingController> scoresNumeric,
      final List<Student> students}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Score> get scores;
  @override
  List<TextEditingController> get scoresNumeric;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScoreBoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(List<Score> scores) putScores,
    required TResult Function(List<Score> scores) acceptScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(List<Score> scores)? putScores,
    TResult? Function(List<Score> scores)? acceptScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(List<Score> scores)? putScores,
    TResult Function(List<Score> scores)? acceptScores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_PutScores value) putScores,
    required TResult Function(_AcceptScores value) acceptScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_PutScores value)? putScores,
    TResult? Function(_AcceptScores value)? acceptScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_PutScores value)? putScores,
    TResult Function(_AcceptScores value)? acceptScores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreBoardEventCopyWith<$Res> {
  factory $ScoreBoardEventCopyWith(
          ScoreBoardEvent value, $Res Function(ScoreBoardEvent) then) =
      _$ScoreBoardEventCopyWithImpl<$Res, ScoreBoardEvent>;
}

/// @nodoc
class _$ScoreBoardEventCopyWithImpl<$Res, $Val extends ScoreBoardEvent>
    implements $ScoreBoardEventCopyWith<$Res> {
  _$ScoreBoardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetStudentsCopyWith<$Res> {
  factory _$$_GetStudentsCopyWith(
          _$_GetStudents value, $Res Function(_$_GetStudents) then) =
      __$$_GetStudentsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetStudentsCopyWithImpl<$Res>
    extends _$ScoreBoardEventCopyWithImpl<$Res, _$_GetStudents>
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
    return 'ScoreBoardEvent.getStudents()';
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
    required TResult Function() getStudents,
    required TResult Function(List<Score> scores) putScores,
    required TResult Function(List<Score> scores) acceptScores,
  }) {
    return getStudents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(List<Score> scores)? putScores,
    TResult? Function(List<Score> scores)? acceptScores,
  }) {
    return getStudents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(List<Score> scores)? putScores,
    TResult Function(List<Score> scores)? acceptScores,
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
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_PutScores value) putScores,
    required TResult Function(_AcceptScores value) acceptScores,
  }) {
    return getStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_PutScores value)? putScores,
    TResult? Function(_AcceptScores value)? acceptScores,
  }) {
    return getStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_PutScores value)? putScores,
    TResult Function(_AcceptScores value)? acceptScores,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents(this);
    }
    return orElse();
  }
}

abstract class _GetStudents implements ScoreBoardEvent {
  const factory _GetStudents() = _$_GetStudents;
}

/// @nodoc
abstract class _$$_PutScoresCopyWith<$Res> {
  factory _$$_PutScoresCopyWith(
          _$_PutScores value, $Res Function(_$_PutScores) then) =
      __$$_PutScoresCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Score> scores});
}

/// @nodoc
class __$$_PutScoresCopyWithImpl<$Res>
    extends _$ScoreBoardEventCopyWithImpl<$Res, _$_PutScores>
    implements _$$_PutScoresCopyWith<$Res> {
  __$$_PutScoresCopyWithImpl(
      _$_PutScores _value, $Res Function(_$_PutScores) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$_PutScores(
      null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ));
  }
}

/// @nodoc

class _$_PutScores implements _PutScores {
  const _$_PutScores(final List<Score> scores) : _scores = scores;

  final List<Score> _scores;
  @override
  List<Score> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'ScoreBoardEvent.putScores(scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PutScores &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PutScoresCopyWith<_$_PutScores> get copyWith =>
      __$$_PutScoresCopyWithImpl<_$_PutScores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(List<Score> scores) putScores,
    required TResult Function(List<Score> scores) acceptScores,
  }) {
    return putScores(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(List<Score> scores)? putScores,
    TResult? Function(List<Score> scores)? acceptScores,
  }) {
    return putScores?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(List<Score> scores)? putScores,
    TResult Function(List<Score> scores)? acceptScores,
    required TResult orElse(),
  }) {
    if (putScores != null) {
      return putScores(scores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_PutScores value) putScores,
    required TResult Function(_AcceptScores value) acceptScores,
  }) {
    return putScores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_PutScores value)? putScores,
    TResult? Function(_AcceptScores value)? acceptScores,
  }) {
    return putScores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_PutScores value)? putScores,
    TResult Function(_AcceptScores value)? acceptScores,
    required TResult orElse(),
  }) {
    if (putScores != null) {
      return putScores(this);
    }
    return orElse();
  }
}

abstract class _PutScores implements ScoreBoardEvent {
  const factory _PutScores(final List<Score> scores) = _$_PutScores;

  List<Score> get scores;
  @JsonKey(ignore: true)
  _$$_PutScoresCopyWith<_$_PutScores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptScoresCopyWith<$Res> {
  factory _$$_AcceptScoresCopyWith(
          _$_AcceptScores value, $Res Function(_$_AcceptScores) then) =
      __$$_AcceptScoresCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Score> scores});
}

/// @nodoc
class __$$_AcceptScoresCopyWithImpl<$Res>
    extends _$ScoreBoardEventCopyWithImpl<$Res, _$_AcceptScores>
    implements _$$_AcceptScoresCopyWith<$Res> {
  __$$_AcceptScoresCopyWithImpl(
      _$_AcceptScores _value, $Res Function(_$_AcceptScores) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scores = null,
  }) {
    return _then(_$_AcceptScores(
      null == scores
          ? _value._scores
          : scores // ignore: cast_nullable_to_non_nullable
              as List<Score>,
    ));
  }
}

/// @nodoc

class _$_AcceptScores implements _AcceptScores {
  const _$_AcceptScores(final List<Score> scores) : _scores = scores;

  final List<Score> _scores;
  @override
  List<Score> get scores {
    if (_scores is EqualUnmodifiableListView) return _scores;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_scores);
  }

  @override
  String toString() {
    return 'ScoreBoardEvent.acceptScores(scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptScores &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptScoresCopyWith<_$_AcceptScores> get copyWith =>
      __$$_AcceptScoresCopyWithImpl<_$_AcceptScores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getStudents,
    required TResult Function(List<Score> scores) putScores,
    required TResult Function(List<Score> scores) acceptScores,
  }) {
    return acceptScores(scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getStudents,
    TResult? Function(List<Score> scores)? putScores,
    TResult? Function(List<Score> scores)? acceptScores,
  }) {
    return acceptScores?.call(scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getStudents,
    TResult Function(List<Score> scores)? putScores,
    TResult Function(List<Score> scores)? acceptScores,
    required TResult orElse(),
  }) {
    if (acceptScores != null) {
      return acceptScores(scores);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_PutScores value) putScores,
    required TResult Function(_AcceptScores value) acceptScores,
  }) {
    return acceptScores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_PutScores value)? putScores,
    TResult? Function(_AcceptScores value)? acceptScores,
  }) {
    return acceptScores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_PutScores value)? putScores,
    TResult Function(_AcceptScores value)? acceptScores,
    required TResult orElse(),
  }) {
    if (acceptScores != null) {
      return acceptScores(this);
    }
    return orElse();
  }
}

abstract class _AcceptScores implements ScoreBoardEvent {
  const factory _AcceptScores(final List<Score> scores) = _$_AcceptScores;

  List<Score> get scores;
  @JsonKey(ignore: true)
  _$$_AcceptScoresCopyWith<_$_AcceptScores> get copyWith =>
      throw _privateConstructorUsedError;
}
