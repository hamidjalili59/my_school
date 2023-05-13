// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClassroomState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Classroom> get classes => throw _privateConstructorUsedError;
  List<Classroom> get teacherClasses => throw _privateConstructorUsedError;
  Classroom? get currentClass => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)?
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
  $ClassroomStateCopyWith<ClassroomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomStateCopyWith<$Res> {
  factory $ClassroomStateCopyWith(
          ClassroomState value, $Res Function(ClassroomState) then) =
      _$ClassroomStateCopyWithImpl<$Res, ClassroomState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Classroom> classes,
      List<Classroom> teacherClasses,
      Classroom? currentClass});

  $ClassroomCopyWith<$Res>? get currentClass;
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
    Object? isLoading = null,
    Object? classes = null,
    Object? teacherClasses = null,
    Object? currentClass = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      classes: null == classes
          ? _value.classes
          : classes // ignore: cast_nullable_to_non_nullable
              as List<Classroom>,
      teacherClasses: null == teacherClasses
          ? _value.teacherClasses
          : teacherClasses // ignore: cast_nullable_to_non_nullable
              as List<Classroom>,
      currentClass: freezed == currentClass
          ? _value.currentClass
          : currentClass // ignore: cast_nullable_to_non_nullable
              as Classroom?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res>? get currentClass {
    if (_value.currentClass == null) {
      return null;
    }

    return $ClassroomCopyWith<$Res>(_value.currentClass!, (value) {
      return _then(_value.copyWith(currentClass: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $ClassroomStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Classroom> classes,
      List<Classroom> teacherClasses,
      Classroom? currentClass});

  @override
  $ClassroomCopyWith<$Res>? get currentClass;
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
    Object? teacherClasses = null,
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
      teacherClasses: null == teacherClasses
          ? _value._teacherClasses
          : teacherClasses // ignore: cast_nullable_to_non_nullable
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
      final List<Classroom> teacherClasses = const [],
      this.currentClass})
      : _classes = classes,
        _teacherClasses = teacherClasses;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Classroom> _classes;
  @override
  @JsonKey()
  List<Classroom> get classes {
    if (_classes is EqualUnmodifiableListView) return _classes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_classes);
  }

  final List<Classroom> _teacherClasses;
  @override
  @JsonKey()
  List<Classroom> get teacherClasses {
    if (_teacherClasses is EqualUnmodifiableListView) return _teacherClasses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_teacherClasses);
  }

  @override
  final Classroom? currentClass;

  @override
  String toString() {
    return 'ClassroomState.idle(isLoading: $isLoading, classes: $classes, teacherClasses: $teacherClasses, currentClass: $currentClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._classes, _classes) &&
            const DeepCollectionEquality()
                .equals(other._teacherClasses, _teacherClasses) &&
            (identical(other.currentClass, currentClass) ||
                other.currentClass == currentClass));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_classes),
      const DeepCollectionEquality().hash(_teacherClasses),
      currentClass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)
        idle,
  }) {
    return idle(isLoading, classes, teacherClasses, currentClass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)?
        idle,
  }) {
    return idle?.call(isLoading, classes, teacherClasses, currentClass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Classroom> classes,
            List<Classroom> teacherClasses, Classroom? currentClass)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, classes, teacherClasses, currentClass);
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

abstract class _Idle implements ClassroomState {
  const factory _Idle(
      {final bool isLoading,
      final List<Classroom> classes,
      final List<Classroom> teacherClasses,
      final Classroom? currentClass}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Classroom> get classes;
  @override
  List<Classroom> get teacherClasses;
  @override
  Classroom? get currentClass;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ClassroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
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
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return changePages(indexName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return changePages?.call(indexName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
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
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return changePages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return changePages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
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
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return getClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return getClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
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
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
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
abstract class _$$_UpdateClassCopyWith<$Res> {
  factory _$$_UpdateClassCopyWith(
          _$_UpdateClass value, $Res Function(_$_UpdateClass) then) =
      __$$_UpdateClassCopyWithImpl<$Res>;
  @useResult
  $Res call({Classroom classroom});

  $ClassroomCopyWith<$Res> get classroom;
}

/// @nodoc
class __$$_UpdateClassCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_UpdateClass>
    implements _$$_UpdateClassCopyWith<$Res> {
  __$$_UpdateClassCopyWithImpl(
      _$_UpdateClass _value, $Res Function(_$_UpdateClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classroom = null,
  }) {
    return _then(_$_UpdateClass(
      null == classroom
          ? _value.classroom
          : classroom // ignore: cast_nullable_to_non_nullable
              as Classroom,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ClassroomCopyWith<$Res> get classroom {
    return $ClassroomCopyWith<$Res>(_value.classroom, (value) {
      return _then(_value.copyWith(classroom: value));
    });
  }
}

/// @nodoc

class _$_UpdateClass implements _UpdateClass {
  const _$_UpdateClass(this.classroom);

  @override
  final Classroom classroom;

  @override
  String toString() {
    return 'ClassroomEvent.updateClass(classroom: $classroom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateClass &&
            (identical(other.classroom, classroom) ||
                other.classroom == classroom));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classroom);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateClassCopyWith<_$_UpdateClass> get copyWith =>
      __$$_UpdateClassCopyWithImpl<_$_UpdateClass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return updateClass(classroom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return updateClass?.call(classroom);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) {
    if (updateClass != null) {
      return updateClass(classroom);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return updateClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return updateClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) {
    if (updateClass != null) {
      return updateClass(this);
    }
    return orElse();
  }
}

abstract class _UpdateClass implements ClassroomEvent {
  const factory _UpdateClass(final Classroom classroom) = _$_UpdateClass;

  Classroom get classroom;
  @JsonKey(ignore: true)
  _$$_UpdateClassCopyWith<_$_UpdateClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetTeacherClassesCopyWith<$Res> {
  factory _$$_GetTeacherClassesCopyWith(_$_GetTeacherClasses value,
          $Res Function(_$_GetTeacherClasses) then) =
      __$$_GetTeacherClassesCopyWithImpl<$Res>;
  @useResult
  $Res call({int teacherId});
}

/// @nodoc
class __$$_GetTeacherClassesCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_GetTeacherClasses>
    implements _$$_GetTeacherClassesCopyWith<$Res> {
  __$$_GetTeacherClassesCopyWithImpl(
      _$_GetTeacherClasses _value, $Res Function(_$_GetTeacherClasses) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacherId = null,
  }) {
    return _then(_$_GetTeacherClasses(
      null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetTeacherClasses implements _GetTeacherClasses {
  const _$_GetTeacherClasses(this.teacherId);

  @override
  final int teacherId;

  @override
  String toString() {
    return 'ClassroomEvent.getTeacherClasses(teacherId: $teacherId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTeacherClasses &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacherId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTeacherClassesCopyWith<_$_GetTeacherClasses> get copyWith =>
      __$$_GetTeacherClassesCopyWithImpl<_$_GetTeacherClasses>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return getTeacherClasses(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return getTeacherClasses?.call(teacherId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) {
    if (getTeacherClasses != null) {
      return getTeacherClasses(teacherId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return getTeacherClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return getTeacherClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) {
    if (getTeacherClasses != null) {
      return getTeacherClasses(this);
    }
    return orElse();
  }
}

abstract class _GetTeacherClasses implements ClassroomEvent {
  const factory _GetTeacherClasses(final int teacherId) = _$_GetTeacherClasses;

  int get teacherId;
  @JsonKey(ignore: true)
  _$$_GetTeacherClassesCopyWith<_$_GetTeacherClasses> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveClassCopyWith<$Res> {
  factory _$$_RemoveClassCopyWith(
          _$_RemoveClass value, $Res Function(_$_RemoveClass) then) =
      __$$_RemoveClassCopyWithImpl<$Res>;
  @useResult
  $Res call({int classId});
}

/// @nodoc
class __$$_RemoveClassCopyWithImpl<$Res>
    extends _$ClassroomEventCopyWithImpl<$Res, _$_RemoveClass>
    implements _$$_RemoveClassCopyWith<$Res> {
  __$$_RemoveClassCopyWithImpl(
      _$_RemoveClass _value, $Res Function(_$_RemoveClass) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
  }) {
    return _then(_$_RemoveClass(
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveClass implements _RemoveClass {
  const _$_RemoveClass(this.classId);

  @override
  final int classId;

  @override
  String toString() {
    return 'ClassroomEvent.removeClass(classId: $classId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveClass &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveClassCopyWith<_$_RemoveClass> get copyWith =>
      __$$_RemoveClassCopyWithImpl<_$_RemoveClass>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String indexName) changePages,
    required TResult Function() getClasses,
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return removeClass(classId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return removeClass?.call(classId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
    TResult Function(String className)? createClasses,
    required TResult orElse(),
  }) {
    if (removeClass != null) {
      return removeClass(classId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePages value) changePages,
    required TResult Function(_GetClasses value) getClasses,
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return removeClass(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return removeClass?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
    TResult Function(_CreateClasses value)? createClasses,
    required TResult orElse(),
  }) {
    if (removeClass != null) {
      return removeClass(this);
    }
    return orElse();
  }
}

abstract class _RemoveClass implements ClassroomEvent {
  const factory _RemoveClass(final int classId) = _$_RemoveClass;

  int get classId;
  @JsonKey(ignore: true)
  _$$_RemoveClassCopyWith<_$_RemoveClass> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(Classroom classroom) updateClass,
    required TResult Function(int teacherId) getTeacherClasses,
    required TResult Function(int classId) removeClass,
    required TResult Function(String className) createClasses,
  }) {
    return createClasses(className);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String indexName)? changePages,
    TResult? Function()? getClasses,
    TResult? Function(Classroom classroom)? updateClass,
    TResult? Function(int teacherId)? getTeacherClasses,
    TResult? Function(int classId)? removeClass,
    TResult? Function(String className)? createClasses,
  }) {
    return createClasses?.call(className);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String indexName)? changePages,
    TResult Function()? getClasses,
    TResult Function(Classroom classroom)? updateClass,
    TResult Function(int teacherId)? getTeacherClasses,
    TResult Function(int classId)? removeClass,
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
    required TResult Function(_UpdateClass value) updateClass,
    required TResult Function(_GetTeacherClasses value) getTeacherClasses,
    required TResult Function(_RemoveClass value) removeClass,
    required TResult Function(_CreateClasses value) createClasses,
  }) {
    return createClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePages value)? changePages,
    TResult? Function(_GetClasses value)? getClasses,
    TResult? Function(_UpdateClass value)? updateClass,
    TResult? Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult? Function(_RemoveClass value)? removeClass,
    TResult? Function(_CreateClasses value)? createClasses,
  }) {
    return createClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePages value)? changePages,
    TResult Function(_GetClasses value)? getClasses,
    TResult Function(_UpdateClass value)? updateClass,
    TResult Function(_GetTeacherClasses value)? getTeacherClasses,
    TResult Function(_RemoveClass value)? removeClass,
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
