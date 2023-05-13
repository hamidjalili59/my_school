// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'score_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ScoreState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Score> get scores => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Score> scores) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Score> scores)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Score> scores)? idle,
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
  $ScoreStateCopyWith<ScoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreStateCopyWith<$Res> {
  factory $ScoreStateCopyWith(
          ScoreState value, $Res Function(ScoreState) then) =
      _$ScoreStateCopyWithImpl<$Res, ScoreState>;
  @useResult
  $Res call({bool isLoading, List<Score> scores});
}

/// @nodoc
class _$ScoreStateCopyWithImpl<$Res, $Val extends ScoreState>
    implements $ScoreStateCopyWith<$Res> {
  _$ScoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $ScoreStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Score> scores});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$ScoreStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? scores = null,
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
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.isLoading = false, final List<Score> scores = const []})
      : _scores = scores;

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

  @override
  String toString() {
    return 'ScoreState.idle(isLoading: $isLoading, scores: $scores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._scores, _scores));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_scores));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Score> scores) idle,
  }) {
    return idle(isLoading, scores);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Score> scores)? idle,
  }) {
    return idle?.call(isLoading, scores);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Score> scores)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, scores);
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

abstract class _Idle implements ScoreState {
  const factory _Idle({final bool isLoading, final List<Score> scores}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Score> get scores;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ScoreEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scoreId) removeScore,
    required TResult Function(int studentId) getScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scoreId)? removeScore,
    TResult? Function(int studentId)? getScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scoreId)? removeScore,
    TResult Function(int studentId)? getScores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveScore value) removeScore,
    required TResult Function(_GetScores value) getScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveScore value)? removeScore,
    TResult? Function(_GetScores value)? getScores,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveScore value)? removeScore,
    TResult Function(_GetScores value)? getScores,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreEventCopyWith<$Res> {
  factory $ScoreEventCopyWith(
          ScoreEvent value, $Res Function(ScoreEvent) then) =
      _$ScoreEventCopyWithImpl<$Res, ScoreEvent>;
}

/// @nodoc
class _$ScoreEventCopyWithImpl<$Res, $Val extends ScoreEvent>
    implements $ScoreEventCopyWith<$Res> {
  _$ScoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RemoveScoreCopyWith<$Res> {
  factory _$$_RemoveScoreCopyWith(
          _$_RemoveScore value, $Res Function(_$_RemoveScore) then) =
      __$$_RemoveScoreCopyWithImpl<$Res>;
  @useResult
  $Res call({int scoreId});
}

/// @nodoc
class __$$_RemoveScoreCopyWithImpl<$Res>
    extends _$ScoreEventCopyWithImpl<$Res, _$_RemoveScore>
    implements _$$_RemoveScoreCopyWith<$Res> {
  __$$_RemoveScoreCopyWithImpl(
      _$_RemoveScore _value, $Res Function(_$_RemoveScore) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scoreId = null,
  }) {
    return _then(_$_RemoveScore(
      null == scoreId
          ? _value.scoreId
          : scoreId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveScore implements _RemoveScore {
  const _$_RemoveScore(this.scoreId);

  @override
  final int scoreId;

  @override
  String toString() {
    return 'ScoreEvent.removeScore(scoreId: $scoreId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveScore &&
            (identical(other.scoreId, scoreId) || other.scoreId == scoreId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scoreId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveScoreCopyWith<_$_RemoveScore> get copyWith =>
      __$$_RemoveScoreCopyWithImpl<_$_RemoveScore>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scoreId) removeScore,
    required TResult Function(int studentId) getScores,
  }) {
    return removeScore(scoreId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scoreId)? removeScore,
    TResult? Function(int studentId)? getScores,
  }) {
    return removeScore?.call(scoreId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scoreId)? removeScore,
    TResult Function(int studentId)? getScores,
    required TResult orElse(),
  }) {
    if (removeScore != null) {
      return removeScore(scoreId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveScore value) removeScore,
    required TResult Function(_GetScores value) getScores,
  }) {
    return removeScore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveScore value)? removeScore,
    TResult? Function(_GetScores value)? getScores,
  }) {
    return removeScore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveScore value)? removeScore,
    TResult Function(_GetScores value)? getScores,
    required TResult orElse(),
  }) {
    if (removeScore != null) {
      return removeScore(this);
    }
    return orElse();
  }
}

abstract class _RemoveScore implements ScoreEvent {
  const factory _RemoveScore(final int scoreId) = _$_RemoveScore;

  int get scoreId;
  @JsonKey(ignore: true)
  _$$_RemoveScoreCopyWith<_$_RemoveScore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetScoresCopyWith<$Res> {
  factory _$$_GetScoresCopyWith(
          _$_GetScores value, $Res Function(_$_GetScores) then) =
      __$$_GetScoresCopyWithImpl<$Res>;
  @useResult
  $Res call({int studentId});
}

/// @nodoc
class __$$_GetScoresCopyWithImpl<$Res>
    extends _$ScoreEventCopyWithImpl<$Res, _$_GetScores>
    implements _$$_GetScoresCopyWith<$Res> {
  __$$_GetScoresCopyWithImpl(
      _$_GetScores _value, $Res Function(_$_GetScores) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$_GetScores(
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetScores implements _GetScores {
  const _$_GetScores(this.studentId);

  @override
  final int studentId;

  @override
  String toString() {
    return 'ScoreEvent.getScores(studentId: $studentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetScores &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetScoresCopyWith<_$_GetScores> get copyWith =>
      __$$_GetScoresCopyWithImpl<_$_GetScores>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int scoreId) removeScore,
    required TResult Function(int studentId) getScores,
  }) {
    return getScores(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int scoreId)? removeScore,
    TResult? Function(int studentId)? getScores,
  }) {
    return getScores?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int scoreId)? removeScore,
    TResult Function(int studentId)? getScores,
    required TResult orElse(),
  }) {
    if (getScores != null) {
      return getScores(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RemoveScore value) removeScore,
    required TResult Function(_GetScores value) getScores,
  }) {
    return getScores(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RemoveScore value)? removeScore,
    TResult? Function(_GetScores value)? getScores,
  }) {
    return getScores?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RemoveScore value)? removeScore,
    TResult Function(_GetScores value)? getScores,
    required TResult orElse(),
  }) {
    if (getScores != null) {
      return getScores(this);
    }
    return orElse();
  }
}

abstract class _GetScores implements ScoreEvent {
  const factory _GetScores(final int studentId) = _$_GetScores;

  int get studentId;
  @JsonKey(ignore: true)
  _$$_GetScoresCopyWith<_$_GetScores> get copyWith =>
      throw _privateConstructorUsedError;
}
