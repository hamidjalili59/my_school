// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'score_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return _Score.fromJson(json);
}

/// @nodoc
mixin _$Score {
// account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'grade_ID')
  int get gradeId => throw _privateConstructorUsedError; //
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId => throw _privateConstructorUsedError; // basic Information
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  String get teacherName =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(4, defaultValue: 0.0)
  @JsonKey(name: 'grade')
  double get grade => throw _privateConstructorUsedError; // basic Information
  @HiveField(5)
  @JsonKey(name: 'student_ID')
  DateTime? get studentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScoreCopyWith<Score> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScoreCopyWith<$Res> {
  factory $ScoreCopyWith(Score value, $Res Function(Score) then) =
      _$ScoreCopyWithImpl<$Res, Score>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'grade_ID')
          int gradeId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          String teacherName,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(4, defaultValue: 0.0)
      @JsonKey(name: 'grade')
          double grade,
      @HiveField(5)
      @JsonKey(name: 'student_ID')
          DateTime? studentId});
}

/// @nodoc
class _$ScoreCopyWithImpl<$Res, $Val extends Score>
    implements $ScoreCopyWith<$Res> {
  _$ScoreCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = null,
    Object? classId = null,
    Object? teacherName = null,
    Object? courseName = null,
    Object? grade = null,
    Object? studentId = freezed,
  }) {
    return _then(_value.copyWith(
      gradeId: null == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScoreCopyWith<$Res> implements $ScoreCopyWith<$Res> {
  factory _$$_ScoreCopyWith(_$_Score value, $Res Function(_$_Score) then) =
      __$$_ScoreCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'grade_ID')
          int gradeId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          String teacherName,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(4, defaultValue: 0.0)
      @JsonKey(name: 'grade')
          double grade,
      @HiveField(5)
      @JsonKey(name: 'student_ID')
          DateTime? studentId});
}

/// @nodoc
class __$$_ScoreCopyWithImpl<$Res> extends _$ScoreCopyWithImpl<$Res, _$_Score>
    implements _$$_ScoreCopyWith<$Res> {
  __$$_ScoreCopyWithImpl(_$_Score _value, $Res Function(_$_Score) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = null,
    Object? classId = null,
    Object? teacherName = null,
    Object? courseName = null,
    Object? grade = null,
    Object? studentId = freezed,
  }) {
    return _then(_$_Score(
      gradeId: null == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      teacherName: null == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      grade: null == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double,
      studentId: freezed == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 26)
class _$_Score implements _Score {
  _$_Score(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'grade_ID')
          this.gradeId = 0,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          this.classId = 0,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          this.teacherName = '',
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'course_Name')
          this.courseName = '',
      @HiveField(4, defaultValue: 0.0)
      @JsonKey(name: 'grade')
          this.grade = 0.0,
      @HiveField(5)
      @JsonKey(name: 'student_ID')
          this.studentId});

  factory _$_Score.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreFromJson(json);

// account email
  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'grade_ID')
  final int gradeId;
//
  @override
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  final int classId;
// basic Information
  @override
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  final String teacherName;
// basic Information
  @override
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'course_Name')
  final String courseName;
// basic Information
  @override
  @HiveField(4, defaultValue: 0.0)
  @JsonKey(name: 'grade')
  final double grade;
// basic Information
  @override
  @HiveField(5)
  @JsonKey(name: 'student_ID')
  final DateTime? studentId;

  @override
  String toString() {
    return 'Score(gradeId: $gradeId, classId: $classId, teacherName: $teacherName, courseName: $courseName, grade: $grade, studentId: $studentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Score &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, gradeId, classId, teacherName, courseName, grade, studentId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      __$$_ScoreCopyWithImpl<_$_Score>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScoreToJson(
      this,
    );
  }
}

abstract class _Score implements Score {
  factory _Score(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'grade_ID')
          final int gradeId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          final int classId,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'teacher_Name')
          final String teacherName,
      @HiveField(3, defaultValue: '')
      @JsonKey(name: 'course_Name')
          final String courseName,
      @HiveField(4, defaultValue: 0.0)
      @JsonKey(name: 'grade')
          final double grade,
      @HiveField(5)
      @JsonKey(name: 'student_ID')
          final DateTime? studentId}) = _$_Score;

  factory _Score.fromJson(Map<String, dynamic> json) = _$_Score.fromJson;

  @override // account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'grade_ID')
  int get gradeId;
  @override //
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId;
  @override // basic Information
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'teacher_Name')
  String get teacherName;
  @override // basic Information
  @HiveField(3, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName;
  @override // basic Information
  @HiveField(4, defaultValue: 0.0)
  @JsonKey(name: 'grade')
  double get grade;
  @override // basic Information
  @HiveField(5)
  @JsonKey(name: 'student_ID')
  DateTime? get studentId;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      throw _privateConstructorUsedError;
}
