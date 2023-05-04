// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OtpHandshakeResponse token) getClientData,
    required TResult Function() tokenIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OtpHandshakeResponse token)? getClientData,
    TResult? Function()? tokenIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OtpHandshakeResponse token)? getClientData,
    TResult Function()? tokenIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClientData value) getClientData,
    required TResult Function(_TokenIsExist value) tokenIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClientData value)? getClientData,
    TResult? Function(_TokenIsExist value)? tokenIsExist,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClientData value)? getClientData,
    TResult Function(_TokenIsExist value)? tokenIsExist,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetClientDataCopyWith<$Res> {
  factory _$$_GetClientDataCopyWith(
          _$_GetClientData value, $Res Function(_$_GetClientData) then) =
      __$$_GetClientDataCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpHandshakeResponse token});
}

/// @nodoc
class __$$_GetClientDataCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_GetClientData>
    implements _$$_GetClientDataCopyWith<$Res> {
  __$$_GetClientDataCopyWithImpl(
      _$_GetClientData _value, $Res Function(_$_GetClientData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_GetClientData(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as OtpHandshakeResponse,
    ));
  }
}

/// @nodoc

class _$_GetClientData implements _GetClientData {
  const _$_GetClientData(this.token);

  @override
  final OtpHandshakeResponse token;

  @override
  String toString() {
    return 'SplashEvent.getClientData(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClientData &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClientDataCopyWith<_$_GetClientData> get copyWith =>
      __$$_GetClientDataCopyWithImpl<_$_GetClientData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OtpHandshakeResponse token) getClientData,
    required TResult Function() tokenIsExist,
  }) {
    return getClientData(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OtpHandshakeResponse token)? getClientData,
    TResult? Function()? tokenIsExist,
  }) {
    return getClientData?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OtpHandshakeResponse token)? getClientData,
    TResult Function()? tokenIsExist,
    required TResult orElse(),
  }) {
    if (getClientData != null) {
      return getClientData(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClientData value) getClientData,
    required TResult Function(_TokenIsExist value) tokenIsExist,
  }) {
    return getClientData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClientData value)? getClientData,
    TResult? Function(_TokenIsExist value)? tokenIsExist,
  }) {
    return getClientData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClientData value)? getClientData,
    TResult Function(_TokenIsExist value)? tokenIsExist,
    required TResult orElse(),
  }) {
    if (getClientData != null) {
      return getClientData(this);
    }
    return orElse();
  }
}

abstract class _GetClientData implements SplashEvent {
  const factory _GetClientData(final OtpHandshakeResponse token) =
      _$_GetClientData;

  OtpHandshakeResponse get token;
  @JsonKey(ignore: true)
  _$$_GetClientDataCopyWith<_$_GetClientData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenIsExistCopyWith<$Res> {
  factory _$$_TokenIsExistCopyWith(
          _$_TokenIsExist value, $Res Function(_$_TokenIsExist) then) =
      __$$_TokenIsExistCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TokenIsExistCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$_TokenIsExist>
    implements _$$_TokenIsExistCopyWith<$Res> {
  __$$_TokenIsExistCopyWithImpl(
      _$_TokenIsExist _value, $Res Function(_$_TokenIsExist) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_TokenIsExist implements _TokenIsExist {
  const _$_TokenIsExist();

  @override
  String toString() {
    return 'SplashEvent.tokenIsExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_TokenIsExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OtpHandshakeResponse token) getClientData,
    required TResult Function() tokenIsExist,
  }) {
    return tokenIsExist();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OtpHandshakeResponse token)? getClientData,
    TResult? Function()? tokenIsExist,
  }) {
    return tokenIsExist?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OtpHandshakeResponse token)? getClientData,
    TResult Function()? tokenIsExist,
    required TResult orElse(),
  }) {
    if (tokenIsExist != null) {
      return tokenIsExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClientData value) getClientData,
    required TResult Function(_TokenIsExist value) tokenIsExist,
  }) {
    return tokenIsExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClientData value)? getClientData,
    TResult? Function(_TokenIsExist value)? tokenIsExist,
  }) {
    return tokenIsExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClientData value)? getClientData,
    TResult Function(_TokenIsExist value)? tokenIsExist,
    required TResult orElse(),
  }) {
    if (tokenIsExist != null) {
      return tokenIsExist(this);
    }
    return orElse();
  }
}

abstract class _TokenIsExist implements SplashEvent {
  const factory _TokenIsExist() = _$_TokenIsExist;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpHandshakeResponse token) jwtExist,
    required TResult Function(String typeOfUser) jwtIsNotExp,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpHandshakeResponse token)? jwtExist,
    TResult? Function(String typeOfUser)? jwtIsNotExp,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpHandshakeResponse token)? jwtExist,
    TResult Function(String typeOfUser)? jwtIsNotExp,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_JwtIsNotExp value) jwtIsNotExp,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadInProgressCopyWith<$Res> {
  factory _$$_LoadInProgressCopyWith(
          _$_LoadInProgress value, $Res Function(_$_LoadInProgress) then) =
      __$$_LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadInProgressCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_LoadInProgress>
    implements _$$_LoadInProgressCopyWith<$Res> {
  __$$_LoadInProgressCopyWithImpl(
      _$_LoadInProgress _value, $Res Function(_$_LoadInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'SplashState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpHandshakeResponse token) jwtExist,
    required TResult Function(String typeOfUser) jwtIsNotExp,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpHandshakeResponse token)? jwtExist,
    TResult? Function(String typeOfUser)? jwtIsNotExp,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpHandshakeResponse token)? jwtExist,
    TResult Function(String typeOfUser)? jwtIsNotExp,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_JwtIsNotExp value) jwtIsNotExp,
    required TResult Function(_Failure value) failure,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult? Function(_Failure value)? failure,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements SplashState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$$_JwtExistCopyWith<$Res> {
  factory _$$_JwtExistCopyWith(
          _$_JwtExist value, $Res Function(_$_JwtExist) then) =
      __$$_JwtExistCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpHandshakeResponse token});
}

/// @nodoc
class __$$_JwtExistCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_JwtExist>
    implements _$$_JwtExistCopyWith<$Res> {
  __$$_JwtExistCopyWithImpl(
      _$_JwtExist _value, $Res Function(_$_JwtExist) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_JwtExist(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as OtpHandshakeResponse,
    ));
  }
}

/// @nodoc

class _$_JwtExist implements _JwtExist {
  const _$_JwtExist(this.token);

  @override
  final OtpHandshakeResponse token;

  @override
  String toString() {
    return 'SplashState.jwtExist(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JwtExist &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JwtExistCopyWith<_$_JwtExist> get copyWith =>
      __$$_JwtExistCopyWithImpl<_$_JwtExist>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpHandshakeResponse token) jwtExist,
    required TResult Function(String typeOfUser) jwtIsNotExp,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return jwtExist(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpHandshakeResponse token)? jwtExist,
    TResult? Function(String typeOfUser)? jwtIsNotExp,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return jwtExist?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpHandshakeResponse token)? jwtExist,
    TResult Function(String typeOfUser)? jwtIsNotExp,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (jwtExist != null) {
      return jwtExist(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_JwtIsNotExp value) jwtIsNotExp,
    required TResult Function(_Failure value) failure,
  }) {
    return jwtExist(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult? Function(_Failure value)? failure,
  }) {
    return jwtExist?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (jwtExist != null) {
      return jwtExist(this);
    }
    return orElse();
  }
}

abstract class _JwtExist implements SplashState {
  const factory _JwtExist(final OtpHandshakeResponse token) = _$_JwtExist;

  OtpHandshakeResponse get token;
  @JsonKey(ignore: true)
  _$$_JwtExistCopyWith<_$_JwtExist> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_JwtIsNotExpCopyWith<$Res> {
  factory _$$_JwtIsNotExpCopyWith(
          _$_JwtIsNotExp value, $Res Function(_$_JwtIsNotExp) then) =
      __$$_JwtIsNotExpCopyWithImpl<$Res>;
  @useResult
  $Res call({String typeOfUser});
}

/// @nodoc
class __$$_JwtIsNotExpCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_JwtIsNotExp>
    implements _$$_JwtIsNotExpCopyWith<$Res> {
  __$$_JwtIsNotExpCopyWithImpl(
      _$_JwtIsNotExp _value, $Res Function(_$_JwtIsNotExp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? typeOfUser = null,
  }) {
    return _then(_$_JwtIsNotExp(
      null == typeOfUser
          ? _value.typeOfUser
          : typeOfUser // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JwtIsNotExp implements _JwtIsNotExp {
  const _$_JwtIsNotExp(this.typeOfUser);

  @override
  final String typeOfUser;

  @override
  String toString() {
    return 'SplashState.jwtIsNotExp(typeOfUser: $typeOfUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JwtIsNotExp &&
            (identical(other.typeOfUser, typeOfUser) ||
                other.typeOfUser == typeOfUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, typeOfUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_JwtIsNotExpCopyWith<_$_JwtIsNotExp> get copyWith =>
      __$$_JwtIsNotExpCopyWithImpl<_$_JwtIsNotExp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpHandshakeResponse token) jwtExist,
    required TResult Function(String typeOfUser) jwtIsNotExp,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return jwtIsNotExp(typeOfUser);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpHandshakeResponse token)? jwtExist,
    TResult? Function(String typeOfUser)? jwtIsNotExp,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return jwtIsNotExp?.call(typeOfUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpHandshakeResponse token)? jwtExist,
    TResult Function(String typeOfUser)? jwtIsNotExp,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (jwtIsNotExp != null) {
      return jwtIsNotExp(typeOfUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_JwtIsNotExp value) jwtIsNotExp,
    required TResult Function(_Failure value) failure,
  }) {
    return jwtIsNotExp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult? Function(_Failure value)? failure,
  }) {
    return jwtIsNotExp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (jwtIsNotExp != null) {
      return jwtIsNotExp(this);
    }
    return orElse();
  }
}

abstract class _JwtIsNotExp implements SplashState {
  const factory _JwtIsNotExp(final String typeOfUser) = _$_JwtIsNotExp;

  String get typeOfUser;
  @JsonKey(ignore: true)
  _$$_JwtIsNotExpCopyWith<_$_JwtIsNotExp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthFailure? failure, String message});

  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$_Failure>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
    Object? message = null,
  }) {
    return _then(_$_Failure(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure({this.failure, this.message = ''});

  @override
  final AuthFailure? failure;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'SplashState.failure(failure: $failure, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadInProgress,
    required TResult Function(OtpHandshakeResponse token) jwtExist,
    required TResult Function(String typeOfUser) jwtIsNotExp,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadInProgress,
    TResult? Function(OtpHandshakeResponse token)? jwtExist,
    TResult? Function(String typeOfUser)? jwtIsNotExp,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadInProgress,
    TResult Function(OtpHandshakeResponse token)? jwtExist,
    TResult Function(String typeOfUser)? jwtIsNotExp,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_JwtExist value) jwtExist,
    required TResult Function(_JwtIsNotExp value) jwtIsNotExp,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_JwtExist value)? jwtExist,
    TResult? Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_JwtExist value)? jwtExist,
    TResult Function(_JwtIsNotExp value)? jwtIsNotExp,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements SplashState {
  const factory _Failure({final AuthFailure? failure, final String message}) =
      _$_Failure;

  AuthFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
