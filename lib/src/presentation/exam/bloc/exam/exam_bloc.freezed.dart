// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExamState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Exam> get exams => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Exam> exams) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Exam> exams)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Exam> exams)? idle,
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
  $ExamStateCopyWith<ExamState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamStateCopyWith<$Res> {
  factory $ExamStateCopyWith(ExamState value, $Res Function(ExamState) then) =
      _$ExamStateCopyWithImpl<$Res, ExamState>;
  @useResult
  $Res call({bool isLoading, List<Exam> exams});
}

/// @nodoc
class _$ExamStateCopyWithImpl<$Res, $Val extends ExamState>
    implements $ExamStateCopyWith<$Res> {
  _$ExamStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exams = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $ExamStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Exam> exams});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res> extends _$ExamStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? exams = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle({this.isLoading = false, final List<Exam> exams = const []})
      : _exams = exams;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Exam> _exams;
  @override
  @JsonKey()
  List<Exam> get exams {
    if (_exams is EqualUnmodifiableListView) return _exams;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  @override
  String toString() {
    return 'ExamState.idle(isLoading: $isLoading, exams: $exams)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._exams, _exams));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_exams));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Exam> exams) idle,
  }) {
    return idle(isLoading, exams);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Exam> exams)? idle,
  }) {
    return idle?.call(isLoading, exams);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Exam> exams)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, exams);
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

abstract class _Idle implements ExamState {
  const factory _Idle({final bool isLoading, final List<Exam> exams}) = _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Exam> get exams;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExamEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExams,
    required TResult Function(int examId) removeExam,
    required TResult Function(Exam exam) acceptExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExams,
    TResult? Function(int examId)? removeExam,
    TResult? Function(Exam exam)? acceptExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExams,
    TResult Function(int examId)? removeExam,
    TResult Function(Exam exam)? acceptExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_RemoveExam value) removeExam,
    required TResult Function(_AcceptExams value) acceptExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_RemoveExam value)? removeExam,
    TResult? Function(_AcceptExams value)? acceptExams,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_RemoveExam value)? removeExam,
    TResult Function(_AcceptExams value)? acceptExams,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamEventCopyWith<$Res> {
  factory $ExamEventCopyWith(ExamEvent value, $Res Function(ExamEvent) then) =
      _$ExamEventCopyWithImpl<$Res, ExamEvent>;
}

/// @nodoc
class _$ExamEventCopyWithImpl<$Res, $Val extends ExamEvent>
    implements $ExamEventCopyWith<$Res> {
  _$ExamEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetExamsCopyWith<$Res> {
  factory _$$_GetExamsCopyWith(
          _$_GetExams value, $Res Function(_$_GetExams) then) =
      __$$_GetExamsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetExamsCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$_GetExams>
    implements _$$_GetExamsCopyWith<$Res> {
  __$$_GetExamsCopyWithImpl(
      _$_GetExams _value, $Res Function(_$_GetExams) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetExams implements _GetExams {
  const _$_GetExams();

  @override
  String toString() {
    return 'ExamEvent.getExams()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetExams);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExams,
    required TResult Function(int examId) removeExam,
    required TResult Function(Exam exam) acceptExams,
  }) {
    return getExams();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExams,
    TResult? Function(int examId)? removeExam,
    TResult? Function(Exam exam)? acceptExams,
  }) {
    return getExams?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExams,
    TResult Function(int examId)? removeExam,
    TResult Function(Exam exam)? acceptExams,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_RemoveExam value) removeExam,
    required TResult Function(_AcceptExams value) acceptExams,
  }) {
    return getExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_RemoveExam value)? removeExam,
    TResult? Function(_AcceptExams value)? acceptExams,
  }) {
    return getExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_RemoveExam value)? removeExam,
    TResult Function(_AcceptExams value)? acceptExams,
    required TResult orElse(),
  }) {
    if (getExams != null) {
      return getExams(this);
    }
    return orElse();
  }
}

abstract class _GetExams implements ExamEvent {
  const factory _GetExams() = _$_GetExams;
}

/// @nodoc
abstract class _$$_RemoveExamCopyWith<$Res> {
  factory _$$_RemoveExamCopyWith(
          _$_RemoveExam value, $Res Function(_$_RemoveExam) then) =
      __$$_RemoveExamCopyWithImpl<$Res>;
  @useResult
  $Res call({int examId});
}

/// @nodoc
class __$$_RemoveExamCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$_RemoveExam>
    implements _$$_RemoveExamCopyWith<$Res> {
  __$$_RemoveExamCopyWithImpl(
      _$_RemoveExam _value, $Res Function(_$_RemoveExam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
  }) {
    return _then(_$_RemoveExam(
      null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveExam implements _RemoveExam {
  const _$_RemoveExam(this.examId);

  @override
  final int examId;

  @override
  String toString() {
    return 'ExamEvent.removeExam(examId: $examId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveExam &&
            (identical(other.examId, examId) || other.examId == examId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, examId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveExamCopyWith<_$_RemoveExam> get copyWith =>
      __$$_RemoveExamCopyWithImpl<_$_RemoveExam>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExams,
    required TResult Function(int examId) removeExam,
    required TResult Function(Exam exam) acceptExams,
  }) {
    return removeExam(examId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExams,
    TResult? Function(int examId)? removeExam,
    TResult? Function(Exam exam)? acceptExams,
  }) {
    return removeExam?.call(examId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExams,
    TResult Function(int examId)? removeExam,
    TResult Function(Exam exam)? acceptExams,
    required TResult orElse(),
  }) {
    if (removeExam != null) {
      return removeExam(examId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_RemoveExam value) removeExam,
    required TResult Function(_AcceptExams value) acceptExams,
  }) {
    return removeExam(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_RemoveExam value)? removeExam,
    TResult? Function(_AcceptExams value)? acceptExams,
  }) {
    return removeExam?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_RemoveExam value)? removeExam,
    TResult Function(_AcceptExams value)? acceptExams,
    required TResult orElse(),
  }) {
    if (removeExam != null) {
      return removeExam(this);
    }
    return orElse();
  }
}

abstract class _RemoveExam implements ExamEvent {
  const factory _RemoveExam(final int examId) = _$_RemoveExam;

  int get examId;
  @JsonKey(ignore: true)
  _$$_RemoveExamCopyWith<_$_RemoveExam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AcceptExamsCopyWith<$Res> {
  factory _$$_AcceptExamsCopyWith(
          _$_AcceptExams value, $Res Function(_$_AcceptExams) then) =
      __$$_AcceptExamsCopyWithImpl<$Res>;
  @useResult
  $Res call({Exam exam});

  $ExamCopyWith<$Res> get exam;
}

/// @nodoc
class __$$_AcceptExamsCopyWithImpl<$Res>
    extends _$ExamEventCopyWithImpl<$Res, _$_AcceptExams>
    implements _$$_AcceptExamsCopyWith<$Res> {
  __$$_AcceptExamsCopyWithImpl(
      _$_AcceptExams _value, $Res Function(_$_AcceptExams) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exam = null,
  }) {
    return _then(_$_AcceptExams(
      null == exam
          ? _value.exam
          : exam // ignore: cast_nullable_to_non_nullable
              as Exam,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExamCopyWith<$Res> get exam {
    return $ExamCopyWith<$Res>(_value.exam, (value) {
      return _then(_value.copyWith(exam: value));
    });
  }
}

/// @nodoc

class _$_AcceptExams implements _AcceptExams {
  const _$_AcceptExams(this.exam);

  @override
  final Exam exam;

  @override
  String toString() {
    return 'ExamEvent.acceptExams(exam: $exam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AcceptExams &&
            (identical(other.exam, exam) || other.exam == exam));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exam);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AcceptExamsCopyWith<_$_AcceptExams> get copyWith =>
      __$$_AcceptExamsCopyWithImpl<_$_AcceptExams>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getExams,
    required TResult Function(int examId) removeExam,
    required TResult Function(Exam exam) acceptExams,
  }) {
    return acceptExams(exam);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getExams,
    TResult? Function(int examId)? removeExam,
    TResult? Function(Exam exam)? acceptExams,
  }) {
    return acceptExams?.call(exam);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getExams,
    TResult Function(int examId)? removeExam,
    TResult Function(Exam exam)? acceptExams,
    required TResult orElse(),
  }) {
    if (acceptExams != null) {
      return acceptExams(exam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetExams value) getExams,
    required TResult Function(_RemoveExam value) removeExam,
    required TResult Function(_AcceptExams value) acceptExams,
  }) {
    return acceptExams(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetExams value)? getExams,
    TResult? Function(_RemoveExam value)? removeExam,
    TResult? Function(_AcceptExams value)? acceptExams,
  }) {
    return acceptExams?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetExams value)? getExams,
    TResult Function(_RemoveExam value)? removeExam,
    TResult Function(_AcceptExams value)? acceptExams,
    required TResult orElse(),
  }) {
    if (acceptExams != null) {
      return acceptExams(this);
    }
    return orElse();
  }
}

abstract class _AcceptExams implements ExamEvent {
  const factory _AcceptExams(final Exam exam) = _$_AcceptExams;

  Exam get exam;
  @JsonKey(ignore: true)
  _$$_AcceptExamsCopyWith<_$_AcceptExams> get copyWith =>
      throw _privateConstructorUsedError;
}
