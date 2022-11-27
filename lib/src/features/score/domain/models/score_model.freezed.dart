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
  @HiveField(0)
  int? get gradeId => throw _privateConstructorUsedError; //
  @HiveField(1)
  int? get classId => throw _privateConstructorUsedError; // basic Information
  @HiveField(2)
  BasicInfoModel? get studentInfo =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(3)
  String? get teacherName =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(4)
  String? get courseName =>
      throw _privateConstructorUsedError; // basic Information
  @HiveField(4)
  double? get grade => throw _privateConstructorUsedError; // basic Information
  @HiveField(4)
  DateTime? get createdDate => throw _privateConstructorUsedError;

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
      {@HiveField(0) int? gradeId,
      @HiveField(1) int? classId,
      @HiveField(2) BasicInfoModel? studentInfo,
      @HiveField(3) String? teacherName,
      @HiveField(4) String? courseName,
      @HiveField(4) double? grade,
      @HiveField(4) DateTime? createdDate});
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
    Object? gradeId = freezed,
    Object? classId = freezed,
    Object? studentInfo = freezed,
    Object? teacherName = freezed,
    Object? courseName = freezed,
    Object? grade = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_value.copyWith(
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
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
      {@HiveField(0) int? gradeId,
      @HiveField(1) int? classId,
      @HiveField(2) BasicInfoModel? studentInfo,
      @HiveField(3) String? teacherName,
      @HiveField(4) String? courseName,
      @HiveField(4) double? grade,
      @HiveField(4) DateTime? createdDate});
}

/// @nodoc
class __$$_ScoreCopyWithImpl<$Res> extends _$ScoreCopyWithImpl<$Res, _$_Score>
    implements _$$_ScoreCopyWith<$Res> {
  __$$_ScoreCopyWithImpl(_$_Score _value, $Res Function(_$_Score) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gradeId = freezed,
    Object? classId = freezed,
    Object? studentInfo = freezed,
    Object? teacherName = freezed,
    Object? courseName = freezed,
    Object? grade = freezed,
    Object? createdDate = freezed,
  }) {
    return _then(_$_Score(
      gradeId: freezed == gradeId
          ? _value.gradeId
          : gradeId // ignore: cast_nullable_to_non_nullable
              as int?,
      classId: freezed == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int?,
      studentInfo: freezed == studentInfo
          ? _value.studentInfo
          : studentInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
      teacherName: freezed == teacherName
          ? _value.teacherName
          : teacherName // ignore: cast_nullable_to_non_nullable
              as String?,
      courseName: freezed == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as double?,
      createdDate: freezed == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 10)
class _$_Score implements _Score {
  _$_Score(
      {@HiveField(0) this.gradeId,
      @HiveField(1) this.classId,
      @HiveField(2) this.studentInfo,
      @HiveField(3) this.teacherName,
      @HiveField(4) this.courseName,
      @HiveField(4) this.grade,
      @HiveField(4) this.createdDate});

  factory _$_Score.fromJson(Map<String, dynamic> json) =>
      _$$_ScoreFromJson(json);

// account email
  @override
  @HiveField(0)
  final int? gradeId;
//
  @override
  @HiveField(1)
  final int? classId;
// basic Information
  @override
  @HiveField(2)
  final BasicInfoModel? studentInfo;
// basic Information
  @override
  @HiveField(3)
  final String? teacherName;
// basic Information
  @override
  @HiveField(4)
  final String? courseName;
// basic Information
  @override
  @HiveField(4)
  final double? grade;
// basic Information
  @override
  @HiveField(4)
  final DateTime? createdDate;

  @override
  String toString() {
    return 'Score(gradeId: $gradeId, classId: $classId, studentInfo: $studentInfo, teacherName: $teacherName, courseName: $courseName, grade: $grade, createdDate: $createdDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Score &&
            (identical(other.gradeId, gradeId) || other.gradeId == gradeId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.studentInfo, studentInfo) ||
                other.studentInfo == studentInfo) &&
            (identical(other.teacherName, teacherName) ||
                other.teacherName == teacherName) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gradeId, classId, studentInfo,
      teacherName, courseName, grade, createdDate);

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
      {@HiveField(0) final int? gradeId,
      @HiveField(1) final int? classId,
      @HiveField(2) final BasicInfoModel? studentInfo,
      @HiveField(3) final String? teacherName,
      @HiveField(4) final String? courseName,
      @HiveField(4) final double? grade,
      @HiveField(4) final DateTime? createdDate}) = _$_Score;

  factory _Score.fromJson(Map<String, dynamic> json) = _$_Score.fromJson;

  @override // account email
  @HiveField(0)
  int? get gradeId;
  @override //
  @HiveField(1)
  int? get classId;
  @override // basic Information
  @HiveField(2)
  BasicInfoModel? get studentInfo;
  @override // basic Information
  @HiveField(3)
  String? get teacherName;
  @override // basic Information
  @HiveField(4)
  String? get courseName;
  @override // basic Information
  @HiveField(4)
  double? get grade;
  @override // basic Information
  @HiveField(4)
  DateTime? get createdDate;
  @override
  @JsonKey(ignore: true)
  _$$_ScoreCopyWith<_$_Score> get copyWith =>
      throw _privateConstructorUsedError;
}
