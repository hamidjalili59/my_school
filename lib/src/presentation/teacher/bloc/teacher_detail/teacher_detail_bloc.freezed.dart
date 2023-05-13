// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'teacher_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TeacherDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Mediator> get mediators => throw _privateConstructorUsedError;
  Teacher? get selectedTeacher => throw _privateConstructorUsedError;
  Course? get selectedCourse => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)?
        idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)?
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
  $TeacherDetailStateCopyWith<TeacherDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDetailStateCopyWith<$Res> {
  factory $TeacherDetailStateCopyWith(
          TeacherDetailState value, $Res Function(TeacherDetailState) then) =
      _$TeacherDetailStateCopyWithImpl<$Res, TeacherDetailState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Mediator> mediators,
      Teacher? selectedTeacher,
      Course? selectedCourse});

  $TeacherCopyWith<$Res>? get selectedTeacher;
  $CourseCopyWith<$Res>? get selectedCourse;
}

/// @nodoc
class _$TeacherDetailStateCopyWithImpl<$Res, $Val extends TeacherDetailState>
    implements $TeacherDetailStateCopyWith<$Res> {
  _$TeacherDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mediators = null,
    Object? selectedTeacher = freezed,
    Object? selectedCourse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mediators: null == mediators
          ? _value.mediators
          : mediators // ignore: cast_nullable_to_non_nullable
              as List<Mediator>,
      selectedTeacher: freezed == selectedTeacher
          ? _value.selectedTeacher
          : selectedTeacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      selectedCourse: freezed == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as Course?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res>? get selectedTeacher {
    if (_value.selectedTeacher == null) {
      return null;
    }

    return $TeacherCopyWith<$Res>(_value.selectedTeacher!, (value) {
      return _then(_value.copyWith(selectedTeacher: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res>? get selectedCourse {
    if (_value.selectedCourse == null) {
      return null;
    }

    return $CourseCopyWith<$Res>(_value.selectedCourse!, (value) {
      return _then(_value.copyWith(selectedCourse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res>
    implements $TeacherDetailStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Mediator> mediators,
      Teacher? selectedTeacher,
      Course? selectedCourse});

  @override
  $TeacherCopyWith<$Res>? get selectedTeacher;
  @override
  $CourseCopyWith<$Res>? get selectedCourse;
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$TeacherDetailStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? mediators = null,
    Object? selectedTeacher = freezed,
    Object? selectedCourse = freezed,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      mediators: null == mediators
          ? _value._mediators
          : mediators // ignore: cast_nullable_to_non_nullable
              as List<Mediator>,
      selectedTeacher: freezed == selectedTeacher
          ? _value.selectedTeacher
          : selectedTeacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
      selectedCourse: freezed == selectedCourse
          ? _value.selectedCourse
          : selectedCourse // ignore: cast_nullable_to_non_nullable
              as Course?,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false,
      final List<Mediator> mediators = const [],
      this.selectedTeacher,
      this.selectedCourse})
      : _mediators = mediators;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Mediator> _mediators;
  @override
  @JsonKey()
  List<Mediator> get mediators {
    if (_mediators is EqualUnmodifiableListView) return _mediators;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_mediators);
  }

  @override
  final Teacher? selectedTeacher;
  @override
  final Course? selectedCourse;

  @override
  String toString() {
    return 'TeacherDetailState.idle(isLoading: $isLoading, mediators: $mediators, selectedTeacher: $selectedTeacher, selectedCourse: $selectedCourse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._mediators, _mediators) &&
            (identical(other.selectedTeacher, selectedTeacher) ||
                other.selectedTeacher == selectedTeacher) &&
            (identical(other.selectedCourse, selectedCourse) ||
                other.selectedCourse == selectedCourse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_mediators),
      selectedTeacher,
      selectedCourse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)
        idle,
  }) {
    return idle(isLoading, mediators, selectedTeacher, selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)?
        idle,
  }) {
    return idle?.call(isLoading, mediators, selectedTeacher, selectedCourse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Mediator> mediators,
            Teacher? selectedTeacher, Course? selectedCourse)?
        idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, mediators, selectedTeacher, selectedCourse);
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

abstract class _Idle implements TeacherDetailState {
  const factory _Idle(
      {final bool isLoading,
      final List<Mediator> mediators,
      final Teacher? selectedTeacher,
      final Course? selectedCourse}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Mediator> get mediators;
  @override
  Teacher? get selectedTeacher;
  @override
  Course? get selectedCourse;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TeacherDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeacherDetailEventCopyWith<$Res> {
  factory $TeacherDetailEventCopyWith(
          TeacherDetailEvent value, $Res Function(TeacherDetailEvent) then) =
      _$TeacherDetailEventCopyWithImpl<$Res, TeacherDetailEvent>;
}

/// @nodoc
class _$TeacherDetailEventCopyWithImpl<$Res, $Val extends TeacherDetailEvent>
    implements $TeacherDetailEventCopyWith<$Res> {
  _$TeacherDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SelectCourseItemCopyWith<$Res> {
  factory _$$_SelectCourseItemCopyWith(
          _$_SelectCourseItem value, $Res Function(_$_SelectCourseItem) then) =
      __$$_SelectCourseItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Course? course});

  $CourseCopyWith<$Res>? get course;
}

/// @nodoc
class __$$_SelectCourseItemCopyWithImpl<$Res>
    extends _$TeacherDetailEventCopyWithImpl<$Res, _$_SelectCourseItem>
    implements _$$_SelectCourseItemCopyWith<$Res> {
  __$$_SelectCourseItemCopyWithImpl(
      _$_SelectCourseItem _value, $Res Function(_$_SelectCourseItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? course = freezed,
  }) {
    return _then(_$_SelectCourseItem(
      freezed == course
          ? _value.course
          : course // ignore: cast_nullable_to_non_nullable
              as Course?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CourseCopyWith<$Res>? get course {
    if (_value.course == null) {
      return null;
    }

    return $CourseCopyWith<$Res>(_value.course!, (value) {
      return _then(_value.copyWith(course: value));
    });
  }
}

/// @nodoc

class _$_SelectCourseItem implements _SelectCourseItem {
  const _$_SelectCourseItem(this.course);

  @override
  final Course? course;

  @override
  String toString() {
    return 'TeacherDetailEvent.selectCourseItem(course: $course)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectCourseItem &&
            (identical(other.course, course) || other.course == course));
  }

  @override
  int get hashCode => Object.hash(runtimeType, course);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectCourseItemCopyWith<_$_SelectCourseItem> get copyWith =>
      __$$_SelectCourseItemCopyWithImpl<_$_SelectCourseItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) {
    return selectCourseItem(course);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) {
    return selectCourseItem?.call(course);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) {
    if (selectCourseItem != null) {
      return selectCourseItem(course);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) {
    return selectCourseItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) {
    return selectCourseItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) {
    if (selectCourseItem != null) {
      return selectCourseItem(this);
    }
    return orElse();
  }
}

abstract class _SelectCourseItem implements TeacherDetailEvent {
  const factory _SelectCourseItem(final Course? course) = _$_SelectCourseItem;

  Course? get course;
  @JsonKey(ignore: true)
  _$$_SelectCourseItemCopyWith<_$_SelectCourseItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectTeacherItemCopyWith<$Res> {
  factory _$$_SelectTeacherItemCopyWith(_$_SelectTeacherItem value,
          $Res Function(_$_SelectTeacherItem) then) =
      __$$_SelectTeacherItemCopyWithImpl<$Res>;
  @useResult
  $Res call({Teacher? teacher});

  $TeacherCopyWith<$Res>? get teacher;
}

/// @nodoc
class __$$_SelectTeacherItemCopyWithImpl<$Res>
    extends _$TeacherDetailEventCopyWithImpl<$Res, _$_SelectTeacherItem>
    implements _$$_SelectTeacherItemCopyWith<$Res> {
  __$$_SelectTeacherItemCopyWithImpl(
      _$_SelectTeacherItem _value, $Res Function(_$_SelectTeacherItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? teacher = freezed,
  }) {
    return _then(_$_SelectTeacherItem(
      freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as Teacher?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TeacherCopyWith<$Res>? get teacher {
    if (_value.teacher == null) {
      return null;
    }

    return $TeacherCopyWith<$Res>(_value.teacher!, (value) {
      return _then(_value.copyWith(teacher: value));
    });
  }
}

/// @nodoc

class _$_SelectTeacherItem implements _SelectTeacherItem {
  const _$_SelectTeacherItem(this.teacher);

  @override
  final Teacher? teacher;

  @override
  String toString() {
    return 'TeacherDetailEvent.selectTeacherItem(teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectTeacherItem &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @override
  int get hashCode => Object.hash(runtimeType, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectTeacherItemCopyWith<_$_SelectTeacherItem> get copyWith =>
      __$$_SelectTeacherItemCopyWithImpl<_$_SelectTeacherItem>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) {
    return selectTeacherItem(teacher);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) {
    return selectTeacherItem?.call(teacher);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) {
    if (selectTeacherItem != null) {
      return selectTeacherItem(teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) {
    return selectTeacherItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) {
    return selectTeacherItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) {
    if (selectTeacherItem != null) {
      return selectTeacherItem(this);
    }
    return orElse();
  }
}

abstract class _SelectTeacherItem implements TeacherDetailEvent {
  const factory _SelectTeacherItem(final Teacher? teacher) =
      _$_SelectTeacherItem;

  Teacher? get teacher;
  @JsonKey(ignore: true)
  _$$_SelectTeacherItemCopyWith<_$_SelectTeacherItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveMediatorCopyWith<$Res> {
  factory _$$_RemoveMediatorCopyWith(
          _$_RemoveMediator value, $Res Function(_$_RemoveMediator) then) =
      __$$_RemoveMediatorCopyWithImpl<$Res>;
  @useResult
  $Res call({int mediatorId});
}

/// @nodoc
class __$$_RemoveMediatorCopyWithImpl<$Res>
    extends _$TeacherDetailEventCopyWithImpl<$Res, _$_RemoveMediator>
    implements _$$_RemoveMediatorCopyWith<$Res> {
  __$$_RemoveMediatorCopyWithImpl(
      _$_RemoveMediator _value, $Res Function(_$_RemoveMediator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediatorId = null,
  }) {
    return _then(_$_RemoveMediator(
      null == mediatorId
          ? _value.mediatorId
          : mediatorId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveMediator implements _RemoveMediator {
  const _$_RemoveMediator(this.mediatorId);

  @override
  final int mediatorId;

  @override
  String toString() {
    return 'TeacherDetailEvent.removeMediator(mediatorId: $mediatorId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveMediator &&
            (identical(other.mediatorId, mediatorId) ||
                other.mediatorId == mediatorId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mediatorId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveMediatorCopyWith<_$_RemoveMediator> get copyWith =>
      __$$_RemoveMediatorCopyWithImpl<_$_RemoveMediator>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) {
    return removeMediator(mediatorId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) {
    return removeMediator?.call(mediatorId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) {
    if (removeMediator != null) {
      return removeMediator(mediatorId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) {
    return removeMediator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) {
    return removeMediator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) {
    if (removeMediator != null) {
      return removeMediator(this);
    }
    return orElse();
  }
}

abstract class _RemoveMediator implements TeacherDetailEvent {
  const factory _RemoveMediator(final int mediatorId) = _$_RemoveMediator;

  int get mediatorId;
  @JsonKey(ignore: true)
  _$$_RemoveMediatorCopyWith<_$_RemoveMediator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptTeacherCopyWith<$Res> {
  factory _$$_AcceptTeacherCopyWith(
          _$_AcceptTeacher value, $Res Function(_$_AcceptTeacher) then) =
      __$$_AcceptTeacherCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AcceptTeacherCopyWithImpl<$Res>
    extends _$TeacherDetailEventCopyWithImpl<$Res, _$_AcceptTeacher>
    implements _$$_AcceptTeacherCopyWith<$Res> {
  __$$_AcceptTeacherCopyWithImpl(
      _$_AcceptTeacher _value, $Res Function(_$_AcceptTeacher) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AcceptTeacher implements _AcceptTeacher {
  const _$_AcceptTeacher();

  @override
  String toString() {
    return 'TeacherDetailEvent.acceptTeacher()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AcceptTeacher);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) {
    return acceptTeacher();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) {
    return acceptTeacher?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) {
    if (acceptTeacher != null) {
      return acceptTeacher();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) {
    return acceptTeacher(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) {
    return acceptTeacher?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) {
    if (acceptTeacher != null) {
      return acceptTeacher(this);
    }
    return orElse();
  }
}

abstract class _AcceptTeacher implements TeacherDetailEvent {
  const factory _AcceptTeacher() = _$_AcceptTeacher;
}

/// @nodoc
abstract class _$$_GetMediatorsCopyWith<$Res> {
  factory _$$_GetMediatorsCopyWith(
          _$_GetMediators value, $Res Function(_$_GetMediators) then) =
      __$$_GetMediatorsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetMediatorsCopyWithImpl<$Res>
    extends _$TeacherDetailEventCopyWithImpl<$Res, _$_GetMediators>
    implements _$$_GetMediatorsCopyWith<$Res> {
  __$$_GetMediatorsCopyWithImpl(
      _$_GetMediators _value, $Res Function(_$_GetMediators) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetMediators implements _GetMediators {
  const _$_GetMediators();

  @override
  String toString() {
    return 'TeacherDetailEvent.getMediators()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetMediators);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Course? course) selectCourseItem,
    required TResult Function(Teacher? teacher) selectTeacherItem,
    required TResult Function(int mediatorId) removeMediator,
    required TResult Function() acceptTeacher,
    required TResult Function() getMediators,
  }) {
    return getMediators();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Course? course)? selectCourseItem,
    TResult? Function(Teacher? teacher)? selectTeacherItem,
    TResult? Function(int mediatorId)? removeMediator,
    TResult? Function()? acceptTeacher,
    TResult? Function()? getMediators,
  }) {
    return getMediators?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Course? course)? selectCourseItem,
    TResult Function(Teacher? teacher)? selectTeacherItem,
    TResult Function(int mediatorId)? removeMediator,
    TResult Function()? acceptTeacher,
    TResult Function()? getMediators,
    required TResult orElse(),
  }) {
    if (getMediators != null) {
      return getMediators();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCourseItem value) selectCourseItem,
    required TResult Function(_SelectTeacherItem value) selectTeacherItem,
    required TResult Function(_RemoveMediator value) removeMediator,
    required TResult Function(_AcceptTeacher value) acceptTeacher,
    required TResult Function(_GetMediators value) getMediators,
  }) {
    return getMediators(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectCourseItem value)? selectCourseItem,
    TResult? Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult? Function(_RemoveMediator value)? removeMediator,
    TResult? Function(_AcceptTeacher value)? acceptTeacher,
    TResult? Function(_GetMediators value)? getMediators,
  }) {
    return getMediators?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCourseItem value)? selectCourseItem,
    TResult Function(_SelectTeacherItem value)? selectTeacherItem,
    TResult Function(_RemoveMediator value)? removeMediator,
    TResult Function(_AcceptTeacher value)? acceptTeacher,
    TResult Function(_GetMediators value)? getMediators,
    required TResult orElse(),
  }) {
    if (getMediators != null) {
      return getMediators(this);
    }
    return orElse();
  }
}

abstract class _GetMediators implements TeacherDetailEvent {
  const factory _GetMediators() = _$_GetMediators;
}
