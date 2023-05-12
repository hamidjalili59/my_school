// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Student _$StudentFromJson(Map<String, dynamic> json) {
  return _Student.fromJson(json);
}

/// @nodoc
mixin _$Student {
// account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'student_ID')
  int get studentId => throw _privateConstructorUsedError; // account password
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId => throw _privateConstructorUsedError; // basic Information
  @HiveField(2)
  @JsonKey(name: 'basic_Info')
  BasicInfoModel? get basicInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentCopyWith<Student> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentCopyWith<$Res> {
  factory $StudentCopyWith(Student value, $Res Function(Student) then) =
      _$StudentCopyWithImpl<$Res, Student>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'student_ID')
          int studentId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId,
      @HiveField(2)
      @JsonKey(name: 'basic_Info')
          BasicInfoModel? basicInfo});
}

/// @nodoc
class _$StudentCopyWithImpl<$Res, $Val extends Student>
    implements $StudentCopyWith<$Res> {
  _$StudentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? classId = null,
    Object? basicInfo = freezed,
  }) {
    return _then(_value.copyWith(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentCopyWith<$Res> implements $StudentCopyWith<$Res> {
  factory _$$_StudentCopyWith(
          _$_Student value, $Res Function(_$_Student) then) =
      __$$_StudentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'student_ID')
          int studentId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classId,
      @HiveField(2)
      @JsonKey(name: 'basic_Info')
          BasicInfoModel? basicInfo});
}

/// @nodoc
class __$$_StudentCopyWithImpl<$Res>
    extends _$StudentCopyWithImpl<$Res, _$_Student>
    implements _$$_StudentCopyWith<$Res> {
  __$$_StudentCopyWithImpl(_$_Student _value, $Res Function(_$_Student) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studentId = null,
    Object? classId = null,
    Object? basicInfo = freezed,
  }) {
    return _then(_$_Student(
      studentId: null == studentId
          ? _value.studentId
          : studentId // ignore: cast_nullable_to_non_nullable
              as int,
      classId: null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 31)
class _$_Student implements _Student {
  _$_Student(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'student_ID')
          this.studentId = 0,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          this.classId = 0,
      @HiveField(2)
      @JsonKey(name: 'basic_Info')
          this.basicInfo});

  factory _$_Student.fromJson(Map<String, dynamic> json) =>
      _$$_StudentFromJson(json);

// account email
  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'student_ID')
  final int studentId;
// account password
  @override
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  final int classId;
// basic Information
  @override
  @HiveField(2)
  @JsonKey(name: 'basic_Info')
  final BasicInfoModel? basicInfo;

  @override
  String toString() {
    return 'Student(studentId: $studentId, classId: $classId, basicInfo: $basicInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Student &&
            (identical(other.studentId, studentId) ||
                other.studentId == studentId) &&
            (identical(other.classId, classId) || other.classId == classId) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, studentId, classId, basicInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      __$$_StudentCopyWithImpl<_$_Student>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentToJson(
      this,
    );
  }
}

abstract class _Student implements Student {
  factory _Student(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'student_ID')
          final int studentId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          final int classId,
      @HiveField(2)
      @JsonKey(name: 'basic_Info')
          final BasicInfoModel? basicInfo}) = _$_Student;

  factory _Student.fromJson(Map<String, dynamic> json) = _$_Student.fromJson;

  @override // account email
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'student_ID')
  int get studentId;
  @override // account password
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classId;
  @override // basic Information
  @HiveField(2)
  @JsonKey(name: 'basic_Info')
  BasicInfoModel? get basicInfo;
  @override
  @JsonKey(ignore: true)
  _$$_StudentCopyWith<_$_Student> get copyWith =>
      throw _privateConstructorUsedError;
}
