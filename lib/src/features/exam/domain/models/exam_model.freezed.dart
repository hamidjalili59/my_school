// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exam_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
// account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'exam_ID')
  int get examId => throw _privateConstructorUsedError; //
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  int get teacherId => throw _privateConstructorUsedError; // basic Information
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'done')
  bool get isDone => throw _privateConstructorUsedError; // basic Information
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'exam_Describtion')
  String get examDescription =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(4, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  String get teacherName =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(5, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'exam_ID')
          int examId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          int teacherId,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'done')
          bool isDone,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'exam_Describtion')
          String examDescription,
      @HiveField(4, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          String teacherName,
      @HiveField(5, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? teacherId = null,
    Object? isDone = null,
    Object? examDescription = null,
    Object? teacherName = null,
    Object? classId = null,
  }) {
    return _then(_value.copyWith(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$_ExamCopyWith(_$_Exam value, $Res Function(_$_Exam) then) =
      __$$_ExamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'exam_ID')
          int examId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          int teacherId,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'done')
          bool isDone,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'exam_Describtion')
          String examDescription,
      @HiveField(4, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          String teacherName,
      @HiveField(5, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId});
}

/// @nodoc
class __$$_ExamCopyWithImpl<$Res> extends _$ExamCopyWithImpl<$Res, _$_Exam>
    implements _$$_ExamCopyWith<$Res> {
  __$$_ExamCopyWithImpl(_$_Exam _value, $Res Function(_$_Exam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? examId = null,
    Object? teacherId = null,
    Object? isDone = null,
    Object? examDescription = null,
    Object? teacherName = null,
    Object? classId = null,
  }) {
    return _then(_$_Exam(
      examId: null == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherId: null == teacherId
          ? _value.teacherId
          : teacherId // ignore: cast_nullable_to_non_nullable
              as int,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
      examDescription: null == examDescription
          ? _value.examDescription
          : examDescription // ignore: cast_nullable_to_non_nullable
              as String,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 14)
class _$_Exam implements _Exam {
  _$_Exam(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'exam_ID')
          this.examId = 0,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          this.teacherId = 0,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'done')
          this.isDone = false,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'exam_Describtion')
          this.examDescription = '',
      @HiveField(4, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          this.teacherName = '',
      @HiveField(5, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          this.classId = 0});

  factory _$_Exam.fromJson(Map<String, dynamic> json) => _$$_ExamFromJson(json);

// account email
  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'exam_ID')
  final int examId;
//
  @override
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  final int teacherId;
// basic Information
  @override
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'done')
  final bool isDone;
// basic Information
  @override
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'exam_Describtion')
  final String examDescription;
// basic Information
  @override
  @HiveField(4, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  final String teacherName;
// basic Information
  @override
  @HiveField(5, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  final int classId;

  @override
  String toString() {
    return 'Exam(examId: $examId, teacherId: $teacherId, isDone: $isDone, examDescription: $examDescription, teacherName: $teacherName, classId: $classId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exam &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.teacherId, teacherId) ||
                other.teacherId == teacherId) &&
            (identical(other.isDone, isDone) || other.isDone == isDone) &&
            (identical(other.examDescription, examDescription) ||
                other.examDescription == examDescription) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, examId, teacherId, isDone,
      examDescription, teacherName, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamCopyWith<_$_Exam> get copyWith =>
      __$$_ExamCopyWithImpl<_$_Exam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  factory _Exam(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'exam_ID')
          final int examId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          final int teacherId,
      @HiveField(2, defaultValue: false)
      @JsonKey(name: 'done')
          final bool isDone,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'exam_Describtion')
          final String examDescription,
      @HiveField(4, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          final String teacherName,
      @HiveField(5, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          final int classId}) = _$_Exam;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$_Exam.fromJson;

  @override // account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'exam_ID')
  int get examId;
  @override //
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  int get teacherId;
  @override // basic Information
  @HiveField(2, defaultValue: false)
  @JsonKey(name: 'done')
  bool get isDone;
  @override // basic Information
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'exam_Describtion')
  String get examDescription;
  @override // basic Information
  @HiveField(4, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  String get teacherName;
  @override // basic Information
  @HiveField(5, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId;
  @override
  @JsonKey(ignore: true)
  _$$_ExamCopyWith<_$_Exam> get copyWith => throw _privateConstructorUsedError;
}
