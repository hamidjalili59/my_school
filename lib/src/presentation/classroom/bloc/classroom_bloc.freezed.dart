// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassroomState {
  String get pageState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageState) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageState)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageState)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassroomStateCopyWith<ClassroomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomStateCopyWith<$Res> {
  factory $ClassroomStateCopyWith(
          ClassroomState value, $Res Function(ClassroomState) then) =
      _$ClassroomStateCopyWithImpl<$Res, ClassroomState>;
  @useResult
  $Res call({String pageState});
}

/// @nodoc
class _$ClassroomStateCopyWithImpl<$Res, $Val extends ClassroomState>
    implements $ClassroomStateCopyWith<$Res> {
  _$ClassroomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_value.copyWith(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentPageIndexCopyWith<$Res>
    implements $ClassroomStateCopyWith<$Res> {
  factory _$$_CurrentPageIndexCopyWith(
          _$_CurrentPageIndex value, $Res Function(_$_CurrentPageIndex) then) =
      __$$_CurrentPageIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String pageState});
}

/// @nodoc
class __$$_CurrentPageIndexCopyWithImpl<$Res>
    extends _$ClassroomStateCopyWithImpl<$Res, _$_CurrentPageIndex>
    implements _$$_CurrentPageIndexCopyWith<$Res> {
  __$$_CurrentPageIndexCopyWithImpl(
      _$_CurrentPageIndex _value, $Res Function(_$_CurrentPageIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageState = null,
  }) {
    return _then(_$_CurrentPageIndex(
      pageState: null == pageState
          ? _value.pageState
          : pageState // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CurrentPageIndex implements _CurrentPageIndex {
  const _$_CurrentPageIndex({this.pageState = 'دانش‌آموزان'});

  @override
  @JsonKey()
  final String pageState;

  @override
  String toString() {
    return 'ClassroomState.currentPageIndex(pageState: $pageState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentPageIndex &&
            (identical(other.pageState, pageState) ||
                other.pageState == pageState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      __$$_CurrentPageIndexCopyWithImpl<_$_CurrentPageIndex>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pageState) currentPageIndex,
  }) {
    return currentPageIndex(pageState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pageState)? currentPageIndex,
  }) {
    return currentPageIndex?.call(pageState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pageState)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (currentPageIndex != null) {
      return currentPageIndex(pageState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) {
    return currentPageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) {
    return currentPageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (currentPageIndex != null) {
      return currentPageIndex(this);
    }
    return orElse();
  }
}

abstract class _CurrentPageIndex implements ClassroomState {
  const factory _CurrentPageIndex({final String pageState}) =
      _$_CurrentPageIndex;

  @override
  String get pageState;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassroomEvent {
  String get indexName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClassroomEventCopyWith<ClassroomEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomEventCopyWith<$Res> {
  factory $ClassroomEventCopyWith(
          ClassroomEvent value, $Res Function(ClassroomEvent) then) =
      _$ClassroomEventCopyWithImpl<$Res, ClassroomEvent>;
  @useResult
  $Res call({String indexName});
}

/// @nodoc
class _$ClassroomEventCopyWithImpl<$Res, $Val extends ClassroomEvent>
    implements $ClassroomEventCopyWith<$Res> {
  _$ClassroomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
  }) {
    return _then(_value.copyWith(
      indexName: null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChangePagesCopyWith<$Res>
    implements $ClassroomEventCopyWith<$Res> {
  factory _$$_ChangePagesCopyWith(
          _$_ChangePages value, $Res Function(_$_ChangePages) then) =
      __$$_ChangePagesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String indexName});
}

/// @nodoc
class __$$_ChangePagesCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_ChangePages>
    implements _$$_ChangePagesCopyWith<$Res> {
  __$$_ChangePagesCopyWithImpl(
      _$_ChangePages _value, $Res Function(_$_ChangePages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? indexName = null,
  }) {
    return _then(_$_ChangePages(
      null == indexName
          ? _value.indexName
          : indexName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangePages implements _ChangePages {
  const _$_ChangePages(this.indexName);

  @override
  final String indexName;

  @override
  String toString() {
    return 'ClassroomEvent.changePages(indexName: $indexName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePages &&
            (identical(other.indexName, indexName) ||
                other.indexName == indexName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, indexName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      __$$_ChangePagesCopyWithImpl<_$_ChangePages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
  }) {
    return changePages(indexName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
  }) {
    return changePages?.call(indexName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(indexName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
  }) {
    return changePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
  }) {
    return changePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(this);
    }
    return orElse();
  }
}

abstract class _ChangePages implements ClassroomEvent {
  const factory _ChangePages(final String indexName) = _$_ChangePages;

  @override
  String get indexName;
  @override
  @JsonKey(ignore: true)
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      throw _privateConstructorUsedError;
}
