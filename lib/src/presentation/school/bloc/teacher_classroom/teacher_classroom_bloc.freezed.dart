// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_classroom_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherClassroomState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Classroom> get classes => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Classroom> classes) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Classroom> classes)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Classroom> classes)? idle,
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
  $TeacherClassroomStateCopyWith<TeacherClassroomState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherClassroomStateCopyWith<$Res> {
  factory $TeacherClassroomStateCopyWith(TeacherClassroomState value,
          $Res Function(TeacherClassroomState) then) =
      _$TeacherClassroomStateCopyWithImpl<$Res, TeacherClassroomState>;
  @useResult
  $Res call({bool isLoading, List<Classroom> classes});
}

/// @nodoc
class _$TeacherClassroomStateCopyWithImpl<$Res,
        $Val extends TeacherClassroomState>
    implements $TeacherClassroomStateCopyWith<$Res> {
  _$TeacherClassroomStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? classes = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $TeacherClassroomStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Classroom> classes});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$TeacherClassroomStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? classes = null,
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
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final List<Classroom> classes = const []})
      : _classes = classes;

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

  @override
  String toString() {
    return 'TeacherClassroomState.idle(isLoading: $isLoading, classes: $classes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._classes, _classes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_classes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Classroom> classes) idle,
  }) {
    return idle(isLoading, classes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Classroom> classes)? idle,
  }) {
    return idle?.call(isLoading, classes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Classroom> classes)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, classes);
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

abstract class _Idle implements TeacherClassroomState {
  const factory _Idle({final bool isLoading, final List<Classroom> classes}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Classroom> get classes;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherClassroomEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetClasses value) getClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherClassroomEventCopyWith<$Res> {
  factory $TeacherClassroomEventCopyWith(TeacherClassroomEvent value,
          $Res Function(TeacherClassroomEvent) then) =
      _$TeacherClassroomEventCopyWithImpl<$Res, TeacherClassroomEvent>;
}

/// @nodoc
class _$TeacherClassroomEventCopyWithImpl<$Res,
        $Val extends TeacherClassroomEvent>
    implements $TeacherClassroomEventCopyWith<$Res> {
  _$TeacherClassroomEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetClassesCopyWith<$Res> {
  factory _$$_GetClassesCopyWith(
          _$_GetClasses value, $Res Function(_$_GetClasses) then) =
      __$$_GetClassesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetClassesCopyWithImpl<$Res>
    extends _$TeacherClassroomEventCopyWithImpl<$Res, _$_GetClasses>
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
    return 'TeacherClassroomEvent.getClasses()';
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
    required TResult Function() getClasses,
  }) {
    return getClasses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getClasses,
  }) {
    return getClasses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getClasses,
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
    required TResult Function(_GetClasses value) getClasses,
  }) {
    return getClasses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetClasses value)? getClasses,
  }) {
    return getClasses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetClasses value)? getClasses,
    required TResult orElse(),
  }) {
    if (getClasses != null) {
      return getClasses(this);
    }
    return orElse();
  }
}

abstract class _GetClasses implements TeacherClassroomEvent {
  const factory _GetClasses() = _$_GetClasses;
}
