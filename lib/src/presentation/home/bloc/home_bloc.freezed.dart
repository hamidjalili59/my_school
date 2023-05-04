// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  AppbarPageType get pageState => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType pageState) currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType pageState)? currentPageIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType pageState)? currentPageIndex,
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
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({AppbarPageType pageState});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

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
              as AppbarPageType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentPageIndexCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$_CurrentPageIndexCopyWith(
          _$_CurrentPageIndex value, $Res Function(_$_CurrentPageIndex) then) =
      __$$_CurrentPageIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppbarPageType pageState});
}

/// @nodoc
class __$$_CurrentPageIndexCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_CurrentPageIndex>
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
              as AppbarPageType,
    ));
  }
}

/// @nodoc

class _$_CurrentPageIndex implements _CurrentPageIndex {
  const _$_CurrentPageIndex({this.pageState = AppbarPageType.classroom});

  @override
  @JsonKey()
  final AppbarPageType pageState;

  @override
  String toString() {
    return 'HomeState.currentPageIndex(pageState: $pageState)';
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
    required TResult Function(AppbarPageType pageState) currentPageIndex,
  }) {
    return currentPageIndex(pageState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType pageState)? currentPageIndex,
  }) {
    return currentPageIndex?.call(pageState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType pageState)? currentPageIndex,
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

abstract class _CurrentPageIndex implements HomeState {
  const factory _CurrentPageIndex({final AppbarPageType pageState}) =
      _$_CurrentPageIndex;

  @override
  AppbarPageType get pageState;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentPageIndexCopyWith<_$_CurrentPageIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType index) changePages,
    required TResult Function(int schoolId) getClasses,
    required TResult Function(int schoolId) getTeachers,
    required TResult Function(int schoolId) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType index)? changePages,
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(int schoolId)? getTeachers,
    TResult? Function(int schoolId)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType index)? changePages,
    TResult Function(int schoolId)? getClasses,
    TResult Function(int schoolId)? getTeachers,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetTeachers value) getTeachers,
    required TResult Function(_GetCourses value) getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetTeachers value)? getTeachers,
    TResult? Function(_GetCourses value)? getCourses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetTeachers value)? getTeachers,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

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
  $Res call({AppbarPageType index});
}

/// @nodoc
class __$$_ChangePagesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_ChangePages>
    implements _$$_ChangePagesCopyWith<$Res> {
  __$$_ChangePagesCopyWithImpl(
      _$_ChangePages _value, $Res Function(_$_ChangePages) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_ChangePages(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as AppbarPageType,
    ));
  }
}

/// @nodoc

class _$_ChangePages implements _ChangePages {
  const _$_ChangePages(this.index);

  @override
  final AppbarPageType index;

  @override
  String toString() {
    return 'HomeEvent.changePages(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePages &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      __$$_ChangePagesCopyWithImpl<_$_ChangePages>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType index) changePages,
    required TResult Function(int schoolId) getClasses,
    required TResult Function(int schoolId) getTeachers,
    required TResult Function(int schoolId) getCourses,
  }) {
    return changePages(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType index)? changePages,
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(int schoolId)? getTeachers,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return changePages?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType index)? changePages,
    TResult Function(int schoolId)? getClasses,
    TResult Function(int schoolId)? getTeachers,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetTeachers value) getTeachers,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return changePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetTeachers value)? getTeachers,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return changePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetTeachers value)? getTeachers,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (changePages != null) {
      return changePages(this);
    }
    return orElse();
  }
}

abstract class _ChangePages implements HomeEvent {
  const factory _ChangePages(final AppbarPageType index) = _$_ChangePages;

  AppbarPageType get index;
  @JsonKey(ignore: true)
  _$$_ChangePagesCopyWith<_$_ChangePages> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetClassesCopyWith<$Res> {
  factory _$$_GetClassesCopyWith(
          _$_GetClasses value, $Res Function(_$_GetClasses) then) =
      __$$_GetClassesCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetClassesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetClasses>
    implements _$$_GetClassesCopyWith<$Res> {
  __$$_GetClassesCopyWithImpl(
      _$_GetClasses _value, $Res Function(_$_GetClasses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetClasses(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetClasses implements _GetClasses {
  const _$_GetClasses(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'HomeEvent.getClasses(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClasses &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      __$$_GetClassesCopyWithImpl<_$_GetClasses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType index) changePages,
    required TResult Function(int schoolId) getClasses,
    required TResult Function(int schoolId) getTeachers,
    required TResult Function(int schoolId) getCourses,
  }) {
    return getClasses(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType index)? changePages,
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(int schoolId)? getTeachers,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return getClasses?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType index)? changePages,
    TResult Function(int schoolId)? getClasses,
    TResult Function(int schoolId)? getTeachers,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetTeachers value) getTeachers,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetTeachers value)? getTeachers,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetTeachers value)? getTeachers,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements HomeEvent {
  const factory _GetClasses(final int schoolId) = _$_GetClasses;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetClassesCopyWith<_$_GetClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTeachersCopyWith<$Res> {
  factory _$$_GetTeachersCopyWith(
          _$_GetTeachers value, $Res Function(_$_GetTeachers) then) =
      __$$_GetTeachersCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetTeachersCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetTeachers>
    implements _$$_GetTeachersCopyWith<$Res> {
  __$$_GetTeachersCopyWithImpl(
      _$_GetTeachers _value, $Res Function(_$_GetTeachers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetTeachers(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTeachers implements _GetTeachers {
  const _$_GetTeachers(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'HomeEvent.getTeachers(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTeachers &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTeachersCopyWith<_$_GetTeachers> get copyWith =>
      __$$_GetTeachersCopyWithImpl<_$_GetTeachers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType index) changePages,
    required TResult Function(int schoolId) getClasses,
    required TResult Function(int schoolId) getTeachers,
    required TResult Function(int schoolId) getCourses,
  }) {
    return getTeachers(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType index)? changePages,
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(int schoolId)? getTeachers,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return getTeachers?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType index)? changePages,
    TResult Function(int schoolId)? getClasses,
    TResult Function(int schoolId)? getTeachers,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (getTeachers != null) {
      return getTeachers(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetTeachers value) getTeachers,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getTeachers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetTeachers value)? getTeachers,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getTeachers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetTeachers value)? getTeachers,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getTeachers != null) {
      return getTeachers(this);
    }
    return orElse();
  }
}

abstract class _GetTeachers implements HomeEvent {
  const factory _GetTeachers(final int schoolId) = _$_GetTeachers;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetTeachersCopyWith<_$_GetTeachers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetCoursesCopyWith<$Res> {
  factory _$$_GetCoursesCopyWith(
          _$_GetCourses value, $Res Function(_$_GetCourses) then) =
      __$$_GetCoursesCopyWithImpl<$Res>;
  @useResult
  $Res call({int schoolId});
}

/// @nodoc
class __$$_GetCoursesCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$_GetCourses>
    implements _$$_GetCoursesCopyWith<$Res> {
  __$$_GetCoursesCopyWithImpl(
      _$_GetCourses _value, $Res Function(_$_GetCourses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? schoolId = null,
  }) {
    return _then(_$_GetCourses(
      null == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetCourses implements _GetCourses {
  const _$_GetCourses(this.schoolId);

  @override
  final int schoolId;

  @override
  String toString() {
    return 'HomeEvent.getCourses(schoolId: $schoolId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetCourses &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, schoolId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetCoursesCopyWith<_$_GetCourses> get copyWith =>
      __$$_GetCoursesCopyWithImpl<_$_GetCourses>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AppbarPageType index) changePages,
    required TResult Function(int schoolId) getClasses,
    required TResult Function(int schoolId) getTeachers,
    required TResult Function(int schoolId) getCourses,
  }) {
    return getCourses(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AppbarPageType index)? changePages,
    TResult? Function(int schoolId)? getClasses,
    TResult? Function(int schoolId)? getTeachers,
    TResult? Function(int schoolId)? getCourses,
  }) {
    return getCourses?.call(schoolId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AppbarPageType index)? changePages,
    TResult Function(int schoolId)? getClasses,
    TResult Function(int schoolId)? getTeachers,
    TResult Function(int schoolId)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(schoolId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_GetTeachers value) getTeachers,
    required TResult Function(_GetCourses value) getCourses,
  }) {
    return getCourses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_GetTeachers value)? getTeachers,
    TResult? Function(_GetCourses value)? getCourses,
  }) {
    return getCourses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_GetTeachers value)? getTeachers,
    TResult Function(_GetCourses value)? getCourses,
    required TResult orElse(),
  }) {
    if (getCourses != null) {
      return getCourses(this);
    }
    return orElse();
  }
}

abstract class _GetCourses implements HomeEvent {
  const factory _GetCourses(final int schoolId) = _$_GetCourses;

  int get schoolId;
  @JsonKey(ignore: true)
  _$$_GetCoursesCopyWith<_$_GetCourses> get copyWith =>
      throw _privateConstructorUsedError;
}
