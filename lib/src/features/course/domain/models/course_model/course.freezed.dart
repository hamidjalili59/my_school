// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'course.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Course _$CourseFromJson(Map<String, dynamic> json) {
  return _Course.fromJson(json);
}

/// @nodoc
mixin _$Course {
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'course_ID')
  int get courseId => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: 0)
  @JsonKey(name: 'school_ID')
  int get schoolID => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CourseCopyWith<Course> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseCopyWith<$Res> {
  factory $CourseCopyWith(Course value, $Res Function(Course) then) =
      _$CourseCopyWithImpl<$Res, Course>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'course_ID')
          int courseId,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(2, defaultValue: 0)
      @JsonKey(name: 'school_ID')
          int schoolID});
}

/// @nodoc
class _$CourseCopyWithImpl<$Res, $Val extends Course>
    implements $CourseCopyWith<$Res> {
  _$CourseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseName = null,
    Object? schoolID = null,
  }) {
    return _then(_value.copyWith(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolID: null == schoolID
          ? _value.schoolID
          : schoolID // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CourseCopyWith<$Res> implements $CourseCopyWith<$Res> {
  factory _$$_CourseCopyWith(_$_Course value, $Res Function(_$_Course) then) =
      __$$_CourseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'course_ID')
          int courseId,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(2, defaultValue: 0)
      @JsonKey(name: 'school_ID')
          int schoolID});
}

/// @nodoc
class __$$_CourseCopyWithImpl<$Res>
    extends _$CourseCopyWithImpl<$Res, _$_Course>
    implements _$$_CourseCopyWith<$Res> {
  __$$_CourseCopyWithImpl(_$_Course _value, $Res Function(_$_Course) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courseId = null,
    Object? courseName = null,
    Object? schoolID = null,
  }) {
    return _then(_$_Course(
      courseId: null == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      schoolID: null == schoolID
          ? _value.schoolID
          : schoolID // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Course implements _Course {
  const _$_Course(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'course_ID')
          this.courseId = 0,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'course_Name')
          this.courseName = '',
      @HiveField(2, defaultValue: 0)
      @JsonKey(name: 'school_ID')
          this.schoolID = 0});

  factory _$_Course.fromJson(Map<String, dynamic> json) =>
      _$$_CourseFromJson(json);

  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'course_ID')
  final int courseId;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'course_Name')
  final String courseName;
  @override
  @HiveField(2, defaultValue: 0)
  @JsonKey(name: 'school_ID')
  final int schoolID;

  @override
  String toString() {
    return 'Course(courseId: $courseId, courseName: $courseName, schoolID: $schoolID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Course &&
            (identical(other.courseId, courseId) ||
                other.courseId == courseId) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.schoolID, schoolID) ||
                other.schoolID == schoolID));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, courseId, courseName, schoolID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      __$$_CourseCopyWithImpl<_$_Course>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CourseToJson(
      this,
    );
  }
}

abstract class _Course implements Course {
  const factory _Course(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'course_ID')
          final int courseId,
      @HiveField(1, defaultValue: '')
      @JsonKey(name: 'course_Name')
          final String courseName,
      @HiveField(2, defaultValue: 0)
      @JsonKey(name: 'school_ID')
          final int schoolID}) = _$_Course;

  factory _Course.fromJson(Map<String, dynamic> json) = _$_Course.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'course_ID')
  int get courseId;
  @override
  @HiveField(1, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName;
  @override
  @HiveField(2, defaultValue: 0)
  @JsonKey(name: 'school_ID')
  int get schoolID;
  @override
  @JsonKey(ignore: true)
  _$$_CourseCopyWith<_$_Course> get copyWith =>
      throw _privateConstructorUsedError;
}
