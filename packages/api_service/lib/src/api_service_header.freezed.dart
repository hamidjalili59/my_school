// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_service_header.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiServiceHeader {
  Map<String, String>? get headers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String>? headers) formData,
    required TResult Function(Map<String, String>? headers) basic,
    required TResult Function(Map<String, String>? headers) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormData value) formData,
    required TResult Function(Basic value) basic,
    required TResult Function(_Data value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiServiceHeaderCopyWith<ApiServiceHeader> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiServiceHeaderCopyWith<$Res> {
  factory $ApiServiceHeaderCopyWith(
          ApiServiceHeader value, $Res Function(ApiServiceHeader) then) =
      _$ApiServiceHeaderCopyWithImpl<$Res>;
  $Res call({Map<String, String>? headers});
}

/// @nodoc
class _$ApiServiceHeaderCopyWithImpl<$Res>
    implements $ApiServiceHeaderCopyWith<$Res> {
  _$ApiServiceHeaderCopyWithImpl(this._value, this._then);

  final ApiServiceHeader _value;
  // ignore: unused_field
  final $Res Function(ApiServiceHeader) _then;

  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_value.copyWith(
      headers: headers == freezed
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_FormDataCopyWith<$Res>
    implements $ApiServiceHeaderCopyWith<$Res> {
  factory _$$_FormDataCopyWith(
          _$_FormData value, $Res Function(_$_FormData) then) =
      __$$_FormDataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, String>? headers});
}

/// @nodoc
class __$$_FormDataCopyWithImpl<$Res>
    extends _$ApiServiceHeaderCopyWithImpl<$Res>
    implements _$$_FormDataCopyWith<$Res> {
  __$$_FormDataCopyWithImpl(
      _$_FormData _value, $Res Function(_$_FormData) _then)
      : super(_value, (v) => _then(v as _$_FormData));

  @override
  _$_FormData get _value => super._value as _$_FormData;

  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$_FormData(
      headers: headers == freezed
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$_FormData implements _FormData {
  const _$_FormData({final Map<String, String>? headers}) : _headers = headers;

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiServiceHeader.formData(headers: $headers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FormData &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  _$$_FormDataCopyWith<_$_FormData> get copyWith =>
      __$$_FormDataCopyWithImpl<_$_FormData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String>? headers) formData,
    required TResult Function(Map<String, String>? headers) basic,
    required TResult Function(Map<String, String>? headers) data,
  }) {
    return formData(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
  }) {
    return formData?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
    required TResult orElse(),
  }) {
    if (formData != null) {
      return formData(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormData value) formData,
    required TResult Function(Basic value) basic,
    required TResult Function(_Data value) data,
  }) {
    return formData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
  }) {
    return formData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (formData != null) {
      return formData(this);
    }
    return orElse();
  }
}

abstract class _FormData implements ApiServiceHeader {
  const factory _FormData({final Map<String, String>? headers}) = _$_FormData;

  @override
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$_FormDataCopyWith<_$_FormData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BasicCopyWith<$Res>
    implements $ApiServiceHeaderCopyWith<$Res> {
  factory _$$BasicCopyWith(_$Basic value, $Res Function(_$Basic) then) =
      __$$BasicCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, String>? headers});
}

/// @nodoc
class __$$BasicCopyWithImpl<$Res> extends _$ApiServiceHeaderCopyWithImpl<$Res>
    implements _$$BasicCopyWith<$Res> {
  __$$BasicCopyWithImpl(_$Basic _value, $Res Function(_$Basic) _then)
      : super(_value, (v) => _then(v as _$Basic));

  @override
  _$Basic get _value => super._value as _$Basic;

  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$Basic(
      headers: headers == freezed
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$Basic implements Basic {
  const _$Basic({final Map<String, String>? headers}) : _headers = headers;

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiServiceHeader.basic(headers: $headers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Basic &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  _$$BasicCopyWith<_$Basic> get copyWith =>
      __$$BasicCopyWithImpl<_$Basic>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String>? headers) formData,
    required TResult Function(Map<String, String>? headers) basic,
    required TResult Function(Map<String, String>? headers) data,
  }) {
    return basic(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
  }) {
    return basic?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormData value) formData,
    required TResult Function(Basic value) basic,
    required TResult Function(_Data value) data,
  }) {
    return basic(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
  }) {
    return basic?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (basic != null) {
      return basic(this);
    }
    return orElse();
  }
}

abstract class Basic implements ApiServiceHeader {
  const factory Basic({final Map<String, String>? headers}) = _$Basic;

  @override
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$BasicCopyWith<_$Basic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res>
    implements $ApiServiceHeaderCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @override
  $Res call({Map<String, String>? headers});
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res> extends _$ApiServiceHeaderCopyWithImpl<$Res>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, (v) => _then(v as _$_Data));

  @override
  _$_Data get _value => super._value as _$_Data;

  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$_Data(
      headers: headers == freezed
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data({final Map<String, String>? headers}) : _headers = headers;

  final Map<String, String>? _headers;
  @override
  Map<String, String>? get headers {
    final value = _headers;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ApiServiceHeader.data(headers: $headers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, String>? headers) formData,
    required TResult Function(Map<String, String>? headers) basic,
    required TResult Function(Map<String, String>? headers) data,
  }) {
    return data(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
  }) {
    return data?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, String>? headers)? formData,
    TResult Function(Map<String, String>? headers)? basic,
    TResult Function(Map<String, String>? headers)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FormData value) formData,
    required TResult Function(Basic value) basic,
    required TResult Function(_Data value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FormData value)? formData,
    TResult Function(Basic value)? basic,
    TResult Function(_Data value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements ApiServiceHeader {
  const factory _Data({final Map<String, String>? headers}) = _$_Data;

  @override
  Map<String, String>? get headers;
  @override
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}
