// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.isLoading = false});

  @override
  @JsonKey()
  final bool isLoading;

  @override
  String toString() {
    return 'AuthState.idle(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return idle(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return idle?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements AuthState {
  const factory _Idle({final bool isLoading}) = _$_Idle;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpHandshakeSuccessCopyWith<$Res> {
  factory _$$_OtpHandshakeSuccessCopyWith(_$_OtpHandshakeSuccess value,
          $Res Function(_$_OtpHandshakeSuccess) then) =
      __$$_OtpHandshakeSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpHandshakeResponse handshakeResponse});
}

/// @nodoc
class __$$_OtpHandshakeSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_OtpHandshakeSuccess>
    implements _$$_OtpHandshakeSuccessCopyWith<$Res> {
  __$$_OtpHandshakeSuccessCopyWithImpl(_$_OtpHandshakeSuccess _value,
      $Res Function(_$_OtpHandshakeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? handshakeResponse = null,
  }) {
    return _then(_$_OtpHandshakeSuccess(
      null == handshakeResponse
          ? _value.handshakeResponse
          : handshakeResponse // ignore: cast_nullable_to_non_nullable
              as OtpHandshakeResponse,
    ));
  }
}

/// @nodoc

class _$_OtpHandshakeSuccess implements _OtpHandshakeSuccess {
  const _$_OtpHandshakeSuccess(this.handshakeResponse);

  @override
  final OtpHandshakeResponse handshakeResponse;

  @override
  String toString() {
    return 'AuthState.otpHandshakeSuccess(handshakeResponse: $handshakeResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpHandshakeSuccess &&
            (identical(other.handshakeResponse, handshakeResponse) ||
                other.handshakeResponse == handshakeResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, handshakeResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpHandshakeSuccessCopyWith<_$_OtpHandshakeSuccess> get copyWith =>
      __$$_OtpHandshakeSuccessCopyWithImpl<_$_OtpHandshakeSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return otpHandshakeSuccess(handshakeResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return otpHandshakeSuccess?.call(handshakeResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (otpHandshakeSuccess != null) {
      return otpHandshakeSuccess(handshakeResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return otpHandshakeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return otpHandshakeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (otpHandshakeSuccess != null) {
      return otpHandshakeSuccess(this);
    }
    return orElse();
  }
}

abstract class _OtpHandshakeSuccess implements AuthState {
  const factory _OtpHandshakeSuccess(
      final OtpHandshakeResponse handshakeResponse) = _$_OtpHandshakeSuccess;

  OtpHandshakeResponse get handshakeResponse;
  @JsonKey(ignore: true)
  _$$_OtpHandshakeSuccessCopyWith<_$_OtpHandshakeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OtpVerifySuccessCopyWith<$Res> {
  factory _$$_OtpVerifySuccessCopyWith(
          _$_OtpVerifySuccess value, $Res Function(_$_OtpVerifySuccess) then) =
      __$$_OtpVerifySuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpVerifyResponse verifyResponse});
}

/// @nodoc
class __$$_OtpVerifySuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_OtpVerifySuccess>
    implements _$$_OtpVerifySuccessCopyWith<$Res> {
  __$$_OtpVerifySuccessCopyWithImpl(
      _$_OtpVerifySuccess _value, $Res Function(_$_OtpVerifySuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verifyResponse = null,
  }) {
    return _then(_$_OtpVerifySuccess(
      null == verifyResponse
          ? _value.verifyResponse
          : verifyResponse // ignore: cast_nullable_to_non_nullable
              as OtpVerifyResponse,
    ));
  }
}

/// @nodoc

class _$_OtpVerifySuccess implements _OtpVerifySuccess {
  const _$_OtpVerifySuccess(this.verifyResponse);

  @override
  final OtpVerifyResponse verifyResponse;

  @override
  String toString() {
    return 'AuthState.otpVerifySuccess(verifyResponse: $verifyResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpVerifySuccess &&
            (identical(other.verifyResponse, verifyResponse) ||
                other.verifyResponse == verifyResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, verifyResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpVerifySuccessCopyWith<_$_OtpVerifySuccess> get copyWith =>
      __$$_OtpVerifySuccessCopyWithImpl<_$_OtpVerifySuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return otpVerifySuccess(verifyResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return otpVerifySuccess?.call(verifyResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (otpVerifySuccess != null) {
      return otpVerifySuccess(verifyResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return otpVerifySuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return otpVerifySuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (otpVerifySuccess != null) {
      return otpVerifySuccess(this);
    }
    return orElse();
  }
}

abstract class _OtpVerifySuccess implements AuthState {
  const factory _OtpVerifySuccess(final OtpVerifyResponse verifyResponse) =
      _$_OtpVerifySuccess;

  OtpVerifyResponse get verifyResponse;
  @JsonKey(ignore: true)
  _$$_OtpVerifySuccessCopyWith<_$_OtpVerifySuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
    TResult Function(AuthFailure? failure, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$_Loading;
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
    extends _$AuthStateCopyWithImpl<$Res, _$_Failure>
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
    return 'AuthState.failure(failure: $failure, message: $message)';
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
    required TResult Function(bool isLoading) idle,
    required TResult Function(OtpHandshakeResponse handshakeResponse)
        otpHandshakeSuccess,
    required TResult Function(OtpVerifyResponse verifyResponse)
        otpVerifySuccess,
    required TResult Function() loading,
    required TResult Function(AuthFailure? failure, String message) failure,
  }) {
    return failure(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? idle,
    TResult? Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult? Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult? Function()? loading,
    TResult? Function(AuthFailure? failure, String message)? failure,
  }) {
    return failure?.call(this.failure, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? idle,
    TResult Function(OtpHandshakeResponse handshakeResponse)?
        otpHandshakeSuccess,
    TResult Function(OtpVerifyResponse verifyResponse)? otpVerifySuccess,
    TResult Function()? loading,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_OtpHandshakeSuccess value) otpHandshakeSuccess,
    required TResult Function(_OtpVerifySuccess value) otpVerifySuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult? Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_OtpHandshakeSuccess value)? otpHandshakeSuccess,
    TResult Function(_OtpVerifySuccess value)? otpVerifySuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure({final AuthFailure? failure, final String message}) =
      _$_Failure;

  AuthFailure? get failure;
  String get message;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double phoneNumber) otpHandshake,
    required TResult Function() resetIdel,
    required TResult Function(double phoneNumber, int verifyCode) otpVerify,
    required TResult Function(OtpHandshakeResponse token) cacheAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double phoneNumber)? otpHandshake,
    TResult? Function()? resetIdel,
    TResult? Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult? Function(OtpHandshakeResponse token)? cacheAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double phoneNumber)? otpHandshake,
    TResult Function()? resetIdel,
    TResult Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult Function(OtpHandshakeResponse token)? cacheAuthData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpHandshake value) otpHandshake,
    required TResult Function(_ResetIdel value) resetIdel,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_CacheAuthData value) cacheAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpHandshake value)? otpHandshake,
    TResult? Function(_ResetIdel value)? resetIdel,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_CacheAuthData value)? cacheAuthData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpHandshake value)? otpHandshake,
    TResult Function(_ResetIdel value)? resetIdel,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_CacheAuthData value)? cacheAuthData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_OtpHandshakeCopyWith<$Res> {
  factory _$$_OtpHandshakeCopyWith(
          _$_OtpHandshake value, $Res Function(_$_OtpHandshake) then) =
      __$$_OtpHandshakeCopyWithImpl<$Res>;
  @useResult
  $Res call({double phoneNumber});
}

/// @nodoc
class __$$_OtpHandshakeCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OtpHandshake>
    implements _$$_OtpHandshakeCopyWith<$Res> {
  __$$_OtpHandshakeCopyWithImpl(
      _$_OtpHandshake _value, $Res Function(_$_OtpHandshake) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_OtpHandshake(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_OtpHandshake implements _OtpHandshake {
  const _$_OtpHandshake(this.phoneNumber);

  @override
  final double phoneNumber;

  @override
  String toString() {
    return 'AuthEvent.otpHandshake(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpHandshake &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpHandshakeCopyWith<_$_OtpHandshake> get copyWith =>
      __$$_OtpHandshakeCopyWithImpl<_$_OtpHandshake>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double phoneNumber) otpHandshake,
    required TResult Function() resetIdel,
    required TResult Function(double phoneNumber, int verifyCode) otpVerify,
    required TResult Function(OtpHandshakeResponse token) cacheAuthData,
  }) {
    return otpHandshake(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double phoneNumber)? otpHandshake,
    TResult? Function()? resetIdel,
    TResult? Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult? Function(OtpHandshakeResponse token)? cacheAuthData,
  }) {
    return otpHandshake?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double phoneNumber)? otpHandshake,
    TResult Function()? resetIdel,
    TResult Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult Function(OtpHandshakeResponse token)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (otpHandshake != null) {
      return otpHandshake(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpHandshake value) otpHandshake,
    required TResult Function(_ResetIdel value) resetIdel,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_CacheAuthData value) cacheAuthData,
  }) {
    return otpHandshake(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpHandshake value)? otpHandshake,
    TResult? Function(_ResetIdel value)? resetIdel,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_CacheAuthData value)? cacheAuthData,
  }) {
    return otpHandshake?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpHandshake value)? otpHandshake,
    TResult Function(_ResetIdel value)? resetIdel,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_CacheAuthData value)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (otpHandshake != null) {
      return otpHandshake(this);
    }
    return orElse();
  }
}

abstract class _OtpHandshake implements AuthEvent {
  const factory _OtpHandshake(final double phoneNumber) = _$_OtpHandshake;

  double get phoneNumber;
  @JsonKey(ignore: true)
  _$$_OtpHandshakeCopyWith<_$_OtpHandshake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetIdelCopyWith<$Res> {
  factory _$$_ResetIdelCopyWith(
          _$_ResetIdel value, $Res Function(_$_ResetIdel) then) =
      __$$_ResetIdelCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetIdelCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_ResetIdel>
    implements _$$_ResetIdelCopyWith<$Res> {
  __$$_ResetIdelCopyWithImpl(
      _$_ResetIdel _value, $Res Function(_$_ResetIdel) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetIdel implements _ResetIdel {
  const _$_ResetIdel();

  @override
  String toString() {
    return 'AuthEvent.resetIdel()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ResetIdel);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double phoneNumber) otpHandshake,
    required TResult Function() resetIdel,
    required TResult Function(double phoneNumber, int verifyCode) otpVerify,
    required TResult Function(OtpHandshakeResponse token) cacheAuthData,
  }) {
    return resetIdel();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double phoneNumber)? otpHandshake,
    TResult? Function()? resetIdel,
    TResult? Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult? Function(OtpHandshakeResponse token)? cacheAuthData,
  }) {
    return resetIdel?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double phoneNumber)? otpHandshake,
    TResult Function()? resetIdel,
    TResult Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult Function(OtpHandshakeResponse token)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (resetIdel != null) {
      return resetIdel();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpHandshake value) otpHandshake,
    required TResult Function(_ResetIdel value) resetIdel,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_CacheAuthData value) cacheAuthData,
  }) {
    return resetIdel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpHandshake value)? otpHandshake,
    TResult? Function(_ResetIdel value)? resetIdel,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_CacheAuthData value)? cacheAuthData,
  }) {
    return resetIdel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpHandshake value)? otpHandshake,
    TResult Function(_ResetIdel value)? resetIdel,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_CacheAuthData value)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (resetIdel != null) {
      return resetIdel(this);
    }
    return orElse();
  }
}

abstract class _ResetIdel implements AuthEvent {
  const factory _ResetIdel() = _$_ResetIdel;
}

/// @nodoc
abstract class _$$_OtpVerifyCopyWith<$Res> {
  factory _$$_OtpVerifyCopyWith(
          _$_OtpVerify value, $Res Function(_$_OtpVerify) then) =
      __$$_OtpVerifyCopyWithImpl<$Res>;
  @useResult
  $Res call({double phoneNumber, int verifyCode});
}

/// @nodoc
class __$$_OtpVerifyCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_OtpVerify>
    implements _$$_OtpVerifyCopyWith<$Res> {
  __$$_OtpVerifyCopyWithImpl(
      _$_OtpVerify _value, $Res Function(_$_OtpVerify) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? verifyCode = null,
  }) {
    return _then(_$_OtpVerify(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as double,
      null == verifyCode
          ? _value.verifyCode
          : verifyCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_OtpVerify implements _OtpVerify {
  const _$_OtpVerify(this.phoneNumber, this.verifyCode);

  @override
  final double phoneNumber;
  @override
  final int verifyCode;

  @override
  String toString() {
    return 'AuthEvent.otpVerify(phoneNumber: $phoneNumber, verifyCode: $verifyCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpVerify &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.verifyCode, verifyCode) ||
                other.verifyCode == verifyCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, verifyCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OtpVerifyCopyWith<_$_OtpVerify> get copyWith =>
      __$$_OtpVerifyCopyWithImpl<_$_OtpVerify>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double phoneNumber) otpHandshake,
    required TResult Function() resetIdel,
    required TResult Function(double phoneNumber, int verifyCode) otpVerify,
    required TResult Function(OtpHandshakeResponse token) cacheAuthData,
  }) {
    return otpVerify(phoneNumber, verifyCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double phoneNumber)? otpHandshake,
    TResult? Function()? resetIdel,
    TResult? Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult? Function(OtpHandshakeResponse token)? cacheAuthData,
  }) {
    return otpVerify?.call(phoneNumber, verifyCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double phoneNumber)? otpHandshake,
    TResult Function()? resetIdel,
    TResult Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult Function(OtpHandshakeResponse token)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (otpVerify != null) {
      return otpVerify(phoneNumber, verifyCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpHandshake value) otpHandshake,
    required TResult Function(_ResetIdel value) resetIdel,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_CacheAuthData value) cacheAuthData,
  }) {
    return otpVerify(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpHandshake value)? otpHandshake,
    TResult? Function(_ResetIdel value)? resetIdel,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_CacheAuthData value)? cacheAuthData,
  }) {
    return otpVerify?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpHandshake value)? otpHandshake,
    TResult Function(_ResetIdel value)? resetIdel,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_CacheAuthData value)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (otpVerify != null) {
      return otpVerify(this);
    }
    return orElse();
  }
}

abstract class _OtpVerify implements AuthEvent {
  const factory _OtpVerify(final double phoneNumber, final int verifyCode) =
      _$_OtpVerify;

  double get phoneNumber;
  int get verifyCode;
  @JsonKey(ignore: true)
  _$$_OtpVerifyCopyWith<_$_OtpVerify> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CacheAuthDataCopyWith<$Res> {
  factory _$$_CacheAuthDataCopyWith(
          _$_CacheAuthData value, $Res Function(_$_CacheAuthData) then) =
      __$$_CacheAuthDataCopyWithImpl<$Res>;
  @useResult
  $Res call({OtpHandshakeResponse token});
}

/// @nodoc
class __$$_CacheAuthDataCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CacheAuthData>
    implements _$$_CacheAuthDataCopyWith<$Res> {
  __$$_CacheAuthDataCopyWithImpl(
      _$_CacheAuthData _value, $Res Function(_$_CacheAuthData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$_CacheAuthData(
      null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as OtpHandshakeResponse,
    ));
  }
}

/// @nodoc

class _$_CacheAuthData implements _CacheAuthData {
  const _$_CacheAuthData(this.token);

  @override
  final OtpHandshakeResponse token;

  @override
  String toString() {
    return 'AuthEvent.cacheAuthData(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CacheAuthData &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CacheAuthDataCopyWith<_$_CacheAuthData> get copyWith =>
      __$$_CacheAuthDataCopyWithImpl<_$_CacheAuthData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double phoneNumber) otpHandshake,
    required TResult Function() resetIdel,
    required TResult Function(double phoneNumber, int verifyCode) otpVerify,
    required TResult Function(OtpHandshakeResponse token) cacheAuthData,
  }) {
    return cacheAuthData(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double phoneNumber)? otpHandshake,
    TResult? Function()? resetIdel,
    TResult? Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult? Function(OtpHandshakeResponse token)? cacheAuthData,
  }) {
    return cacheAuthData?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double phoneNumber)? otpHandshake,
    TResult Function()? resetIdel,
    TResult Function(double phoneNumber, int verifyCode)? otpVerify,
    TResult Function(OtpHandshakeResponse token)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (cacheAuthData != null) {
      return cacheAuthData(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OtpHandshake value) otpHandshake,
    required TResult Function(_ResetIdel value) resetIdel,
    required TResult Function(_OtpVerify value) otpVerify,
    required TResult Function(_CacheAuthData value) cacheAuthData,
  }) {
    return cacheAuthData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OtpHandshake value)? otpHandshake,
    TResult? Function(_ResetIdel value)? resetIdel,
    TResult? Function(_OtpVerify value)? otpVerify,
    TResult? Function(_CacheAuthData value)? cacheAuthData,
  }) {
    return cacheAuthData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OtpHandshake value)? otpHandshake,
    TResult Function(_ResetIdel value)? resetIdel,
    TResult Function(_OtpVerify value)? otpVerify,
    TResult Function(_CacheAuthData value)? cacheAuthData,
    required TResult orElse(),
  }) {
    if (cacheAuthData != null) {
      return cacheAuthData(this);
    }
    return orElse();
  }
}

abstract class _CacheAuthData implements AuthEvent {
  const factory _CacheAuthData(final OtpHandshakeResponse token) =
      _$_CacheAuthData;

  OtpHandshakeResponse get token;
  @JsonKey(ignore: true)
  _$$_CacheAuthDataCopyWith<_$_CacheAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}
