// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rollcall_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RollcallState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Rollcall> get rollcalls => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Rollcall> rollcalls) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Rollcall> rollcalls)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Rollcall> rollcalls)? idle,
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
  $RollcallStateCopyWith<RollcallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RollcallStateCopyWith<$Res> {
  factory $RollcallStateCopyWith(
          RollcallState value, $Res Function(RollcallState) then) =
      _$RollcallStateCopyWithImpl<$Res, RollcallState>;
  @useResult
  $Res call({bool isLoading, List<Rollcall> rollcalls});
}

/// @nodoc
class _$RollcallStateCopyWithImpl<$Res, $Val extends RollcallState>
    implements $RollcallStateCopyWith<$Res> {
  _$RollcallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rollcalls = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $RollcallStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Rollcall> rollcalls});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$RollcallStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? rollcalls = null,
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
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final List<Rollcall> rollcalls = const []})
      : _rollcalls = rollcalls;

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

  @override
  String toString() {
    return 'RollcallState.idle(isLoading: $isLoading, rollcalls: $rollcalls)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._rollcalls, _rollcalls));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_rollcalls));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Rollcall> rollcalls) idle,
  }) {
    return idle(isLoading, rollcalls);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Rollcall> rollcalls)? idle,
  }) {
    return idle?.call(isLoading, rollcalls);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Rollcall> rollcalls)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, rollcalls);
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

abstract class _Idle implements RollcallState {
  const factory _Idle({final bool isLoading, final List<Rollcall> rollcalls}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Rollcall> get rollcalls;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RollcallEvent {
  int get studentId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentId) getRollcalls,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentId)? getRollcalls,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentId)? getRollcalls,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRollcalls value) getRollcalls,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRollcalls value)? getRollcalls,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRollcalls value)? getRollcalls,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RollcallEventCopyWith<RollcallEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RollcallEventCopyWith<$Res> {
  factory $RollcallEventCopyWith(
          RollcallEvent value, $Res Function(RollcallEvent) then) =
      _$RollcallEventCopyWithImpl<$Res, RollcallEvent>;
  @useResult
  $Res call({int studentId});
}

/// @nodoc
class _$RollcallEventCopyWithImpl<$Res, $Val extends RollcallEvent>
    implements $RollcallEventCopyWith<$Res> {
  _$RollcallEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetRollcallsCopyWith<$Res>
    implements $RollcallEventCopyWith<$Res> {
  factory _$$_GetRollcallsCopyWith(
          _$_GetRollcalls value, $Res Function(_$_GetRollcalls) then) =
      __$$_GetRollcallsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int studentId});
}

/// @nodoc
class __$$_GetRollcallsCopyWithImpl<$Res>
    extends _$RollcallEventCopyWithImpl<$Res, _$_GetRollcalls>
    implements _$$_GetRollcallsCopyWith<$Res> {
  __$$_GetRollcallsCopyWithImpl(
      _$_GetRollcalls _value, $Res Function(_$_GetRollcalls) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
  }) {
    return _then(_$_GetRollcalls(
      null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetRollcalls implements _GetRollcalls {
  const _$_GetRollcalls(this.studentId);

  @override
  final int studentId;

  @override
  String toString() {
    return 'RollcallEvent.getRollcalls(studentId: $studentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetRollcalls &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetRollcallsCopyWith<_$_GetRollcalls> get copyWith =>
      __$$_GetRollcallsCopyWithImpl<_$_GetRollcalls>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int studentId) getRollcalls,
  }) {
    return getRollcalls(studentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int studentId)? getRollcalls,
  }) {
    return getRollcalls?.call(studentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int studentId)? getRollcalls,
    required TResult orElse(),
  }) {
    if (getRollcalls != null) {
      return getRollcalls(studentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRollcalls value) getRollcalls,
  }) {
    return getRollcalls(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRollcalls value)? getRollcalls,
  }) {
    return getRollcalls?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRollcalls value)? getRollcalls,
    required TResult orElse(),
  }) {
    if (getRollcalls != null) {
      return getRollcalls(this);
    }
    return orElse();
  }
}

abstract class _GetRollcalls implements RollcallEvent {
  const factory _GetRollcalls(final int studentId) = _$_GetRollcalls;

  @override
  int get studentId;
  @override
  @JsonKey(ignore: true)
  _$$_GetRollcallsCopyWith<_$_GetRollcalls> get copyWith =>
      throw _privateConstructorUsedError;
}
