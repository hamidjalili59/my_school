// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'school_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SchoolState {
  bool get isLoading => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Map<String, dynamic> data) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> data)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> data)? idle,
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
  $SchoolStateCopyWith<SchoolState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolStateCopyWith<$Res> {
  factory $SchoolStateCopyWith(
          SchoolState value, $Res Function(SchoolState) then) =
      _$SchoolStateCopyWithImpl<$Res, SchoolState>;
  @useResult
  $Res call({bool isLoading, Map<String, dynamic> data});
}

/// @nodoc
class _$SchoolStateCopyWithImpl<$Res, $Val extends SchoolState>
    implements $SchoolStateCopyWith<$Res> {
  _$SchoolStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $SchoolStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, Map<String, dynamic> data});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$SchoolStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? data = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final Map<String, dynamic> data = const {}})
      : _data = data;

  @override
  @JsonKey()
  final bool isLoading;
  final Map<String, dynamic> _data;
  @override
  @JsonKey()
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'SchoolState.idle(isLoading: $isLoading, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, Map<String, dynamic> data) idle,
  }) {
    return idle(isLoading, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, Map<String, dynamic> data)? idle,
  }) {
    return idle?.call(isLoading, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, Map<String, dynamic> data)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, data);
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

abstract class _Idle implements SchoolState {
  const factory _Idle({final bool isLoading, final Map<String, dynamic> data}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SchoolEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSchools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchools value) getSchools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchools value)? getSchools,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchools value)? getSchools,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SchoolEventCopyWith<$Res> {
  factory $SchoolEventCopyWith(
          SchoolEvent value, $Res Function(SchoolEvent) then) =
      _$SchoolEventCopyWithImpl<$Res, SchoolEvent>;
}

/// @nodoc
class _$SchoolEventCopyWithImpl<$Res, $Val extends SchoolEvent>
    implements $SchoolEventCopyWith<$Res> {
  _$SchoolEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetSchoolsCopyWith<$Res> {
  factory _$$_GetSchoolsCopyWith(
          _$_GetSchools value, $Res Function(_$_GetSchools) then) =
      __$$_GetSchoolsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSchoolsCopyWithImpl<$Res>
    extends _$SchoolEventCopyWithImpl<$Res, _$_GetSchools>
    implements _$$_GetSchoolsCopyWith<$Res> {
  __$$_GetSchoolsCopyWithImpl(
      _$_GetSchools _value, $Res Function(_$_GetSchools) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSchools implements _GetSchools {
  const _$_GetSchools();

  @override
  String toString() {
    return 'SchoolEvent.getSchools()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSchools);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSchools,
  }) {
    return getSchools();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSchools,
  }) {
    return getSchools?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSchools,
    required TResult orElse(),
  }) {
    if (getSchools != null) {
      return getSchools();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetSchools value) getSchools,
  }) {
    return getSchools(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetSchools value)? getSchools,
  }) {
    return getSchools?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetSchools value)? getSchools,
    required TResult orElse(),
  }) {
    if (getSchools != null) {
      return getSchools(this);
    }
    return orElse();
  }
}

abstract class _GetSchools implements SchoolEvent {
  const factory _GetSchools() = _$_GetSchools;
}
