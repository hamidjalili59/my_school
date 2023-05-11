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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)
        idle,
    required TResult Function(String pageState) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
    TResult? Function(String pageState)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
    TResult Function(String pageState)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomStateCopyWith<$Res> {
  factory $ClassroomStateCopyWith(
          ClassroomState value, $Res Function(ClassroomState) then) =
      _$ClassroomStateCopyWithImpl<$Res, ClassroomState>;
}

/// @nodoc
class _$ClassroomStateCopyWithImpl<$Res, $Val extends ClassroomState>
    implements $ClassroomStateCopyWith<$Res> {
  _$ClassroomStateCopyWithImpl(this._value, this._then);

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
  $Res call({bool isLoading, List<Classroom> classes, Classroom? currentClass});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$ClassroomStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? classes = null,
    Object? currentClass = freezed,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      classes: null == classes
          ? _value._classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Classroom>,
      currentClass: freezed == currentClass
          ? _value.currentClass
          : currentClass // ignore: cast_nullable_to_non_nullable
              as Classroom?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false,
      final List<Classroom> classes = const [],
      this.currentClass})
      : _classes = classes;

  @override
  @JsonKey()
  final bool isLoading;
// @Default(AppbarPageType.student) AppbarPageType pageState,
  final List<Classroom> _classes;
// @Default(AppbarPageType.student) AppbarPageType pageState,
  @override
  @JsonKey()
  List<Classroom> get classes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  @override
  final Classroom? currentClass;

  @override
  String toString() {
    return 'ClassroomState.idle(isLoading: $isLoading, classes: $classes, currentClass: $currentClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            (identical(other.currentClass, currentClass) ||
                other.currentClass == currentClass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading,
      const DeepCollectionEquality().hash(_classes), currentClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)
        idle,
    required TResult Function(String pageState) currentPageIndex,
  }) {
    return idle(isLoading, classes, currentClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
    TResult? Function(String pageState)? currentPageIndex,
  }) {
    return idle?.call(isLoading, classes, currentClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
    TResult Function(String pageState)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, classes, currentClass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Idle value) idle,
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
    TResult Function(_CurrentPageIndex value)? currentPageIndex,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements ClassroomState {
  const factory _Idle(
      {final bool isLoading,
      final List<Classroom> classes,
      final Classroom? currentClass}) = _$_Idle;

  bool
      get isLoading; // @Default(AppbarPageType.student) AppbarPageType pageState,
  List<Classroom> get classes;
  Classroom? get currentClass;
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CurrentPageIndexCopyWith<$Res> {
  factory _$$_CurrentPageIndexCopyWith(
          _$_CurrentPageIndex value, $Res Function(_$_CurrentPageIndex) then) =
      __$$_CurrentPageIndexCopyWithImpl<$Res>;
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
    required TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)
        idle,
    required TResult Function(String pageState) currentPageIndex,
  }) {
    return currentPageIndex(pageState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
    TResult? Function(String pageState)? currentPageIndex,
  }) {
    return currentPageIndex?.call(pageState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isLoading, List<Classroom> classes, Classroom? currentClass)?
        idle,
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
    required TResult Function(_Idle value) idle,
    required TResult Function(_CurrentPageIndex value) currentPageIndex,
  }) {
    return currentPageIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Idle value)? idle,
    TResult? Function(_CurrentPageIndex value)? currentPageIndex,
  }) {
    return currentPageIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Idle value)? idle,
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

  String get pageState;
  @JsonKey(ignore: true)
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(String className) createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(String className)? createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_CreateClasses value) createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_CreateClasses value)? createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomEventCopyWith<$Res> {
  factory $ClassroomEventCopyWith(
          ClassroomEvent value, $Res Function(ClassroomEvent) then) =
      _$ClassroomEventCopyWithImpl<$Res, ClassroomEvent>;
}

/// @nodoc
class _$ClassroomEventCopyWithImpl<$Res, $Val extends ClassroomEvent>
    implements $ClassroomEventCopyWith<$Res> {
  _$ClassroomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ChangePagesCopyWith<$Res> {
  factory _$$_ChangePagesCopyWith(
          _$_ChangePages value, $Res Function(_$_ChangePages) then) =
      __$$_ChangePagesCopyWithImpl<$Res>;
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
    required TResult Function() getClasses,
    required TResult Function(String className) createClasses,
  }) {
    return changePages(indexName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(String className)? createClasses,
  }) {
    return changePages?.call(indexName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(String className)? createClasses,
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
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return changePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return changePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_CreateClasses value)? createClasses,
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

  String get indexName;
  @JsonKey(ignore: true)
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetClassesCopyWith<$Res> {
  factory _$$_GetClassesCopyWith(
          _$_GetClasses value, $Res Function(_$_GetClasses) then) =
      __$$_GetClassesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetClassesCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_GetClasses>
    implements _$$_GetClassesCopyWith<$Res> {
  __$$_GetClassesCopyWithImpl(
      _$_GetClasses _value, $Res Function(_$_GetClasses) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetClasses implements _GetClasses {
  const _$_GetClasses();

  @override
  String toString() {
    return 'ClassroomEvent.getClasses()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetClasses);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(String className) createClasses,
  }) {
    return getClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(String className)? createClasses,
  }) {
    return getClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements ClassroomEvent {
  const factory _GetClasses() = _$_GetClasses;
}

/// @nodoc
abstract class _$$_CreateClassesCopyWith<$Res> {
  factory _$$_CreateClassesCopyWith(
          _$_CreateClasses value, $Res Function(_$_CreateClasses) then) =
      __$$_CreateClassesCopyWithImpl<$Res>;
  @useResult
  $Res call({String className});
}

/// @nodoc
class __$$_CreateClassesCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_CreateClasses>
    implements _$$_CreateClassesCopyWith<$Res> {
  __$$_CreateClassesCopyWithImpl(
      _$_CreateClasses _value, $Res Function(_$_CreateClasses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? className = null,
  }) {
    return _then(_$_CreateClasses(
      null == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateClasses implements _CreateClasses {
  const _$_CreateClasses(this.className);

  @override
  final String className;

  @override
  String toString() {
    return 'ClassroomEvent.createClasses(className: $className)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateClasses &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @override
  int get hashCode => Object.hash(runtimeType, className);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateClassesCopyWith<_$_CreateClasses> get copyWith =>
      __$$_CreateClassesCopyWithImpl<_$_CreateClasses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(String className) createClasses,
  }) {
    return createClasses(className);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(String className)? createClasses,
  }) {
    return createClasses?.call(className);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) {
    if (createClasses != null) {
      return createClasses(className);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return createClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return createClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) {
    if (createClasses != null) {
      return createClasses(this);
    }
    return orElse();
  }
}

abstract class _CreateClasses implements ClassroomEvent {
  const factory _CreateClasses(final String className) = _$_CreateClasses;

  String get className;
  @JsonKey(ignore: true)
  _$$_CreateClassesCopyWith<_$_CreateClasses> get copyWith =>
      throw _privateConstructorUsedError;
}
