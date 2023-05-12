// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mediator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Mediator _$MediatorFromJson(Map<String, dynamic> json) {
  return _Mediator.fromJson(json);
}

/// @nodoc
mixin _$Mediator {
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'mediator_ID')
  int get mediatorId => throw _privateConstructorUsedError;
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classID => throw _privateConstructorUsedError;
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName => throw _privateConstructorUsedError;
  @HiveField(3, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  int get teacherID => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'basic_Info')
  BasicInfoModel? get basicInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediatorCopyWith<Mediator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediatorCopyWith<$Res> {
  factory $MediatorCopyWith(Mediator value, $Res Function(Mediator) then) =
      _$MediatorCopyWithImpl<$Res, Mediator>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'mediator_ID')
          int mediatorId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classID,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(3, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          int teacherID,
      @HiveField(4)
      @JsonKey(name: 'basic_Info')
          BasicInfoModel? basicInfo});
}

/// @nodoc
class _$MediatorCopyWithImpl<$Res, $Val extends Mediator>
    implements $MediatorCopyWith<$Res> {
  _$MediatorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediatorId = null,
    Object? classID = null,
    Object? courseName = null,
    Object? teacherID = null,
    Object? basicInfo = freezed,
  }) {
    return _then(_value.copyWith(
      mediatorId: null == mediatorId
          ? _value.mediatorId
          : mediatorId // ignore: cast_nullable_to_non_nullable
              as int,
      classID: null == classID
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherID: null == teacherID
          ? _value.teacherID
          : teacherID // ignore: cast_nullable_to_non_nullable
              as int,
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MediatorCopyWith<$Res> implements $MediatorCopyWith<$Res> {
  factory _$$_MediatorCopyWith(
          _$_Mediator value, $Res Function(_$_Mediator) then) =
      __$$_MediatorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'mediator_ID')
          int mediatorId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          int classID,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'course_Name')
          String courseName,
      @HiveField(3, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          int teacherID,
      @HiveField(4)
      @JsonKey(name: 'basic_Info')
          BasicInfoModel? basicInfo});
}

/// @nodoc
class __$$_MediatorCopyWithImpl<$Res>
    extends _$MediatorCopyWithImpl<$Res, _$_Mediator>
    implements _$$_MediatorCopyWith<$Res> {
  __$$_MediatorCopyWithImpl(
      _$_Mediator _value, $Res Function(_$_Mediator) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediatorId = null,
    Object? classID = null,
    Object? courseName = null,
    Object? teacherID = null,
    Object? basicInfo = freezed,
  }) {
    return _then(_$_Mediator(
      mediatorId: null == mediatorId
          ? _value.mediatorId
          : mediatorId // ignore: cast_nullable_to_non_nullable
              as int,
      classID: null == classID
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as int,
      courseName: null == courseName
          ? _value.courseName
          : courseName // ignore: cast_nullable_to_non_nullable
              as String,
      teacherID: null == teacherID
          ? _value.teacherID
          : teacherID // ignore: cast_nullable_to_non_nullable
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
class _$_Mediator implements _Mediator {
  const _$_Mediator(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'mediator_ID')
          this.mediatorId = 0,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          this.classID = 0,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'course_Name')
          this.courseName = '',
      @HiveField(3, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          this.teacherID = 0,
      @HiveField(4)
      @JsonKey(name: 'basic_Info')
          this.basicInfo});

  factory _$_Mediator.fromJson(Map<String, dynamic> json) =>
      _$$_MediatorFromJson(json);

  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'mediator_ID')
  final int mediatorId;
  @override
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  final int classID;
  @override
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'course_Name')
  final String courseName;
  @override
  @HiveField(3, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  final int teacherID;
  @override
  @HiveField(4)
  @JsonKey(name: 'basic_Info')
  final BasicInfoModel? basicInfo;

  @override
  String toString() {
    return 'Mediator(mediatorId: $mediatorId, classID: $classID, courseName: $courseName, teacherID: $teacherID, basicInfo: $basicInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Mediator &&
            (identical(other.mediatorId, mediatorId) ||
                other.mediatorId == mediatorId) &&
            (identical(other.classID, classID) || other.classID == classID) &&
            (identical(other.courseName, courseName) ||
                other.courseName == courseName) &&
            (identical(other.teacherID, teacherID) ||
                other.teacherID == teacherID) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, mediatorId, classID, courseName, teacherID, basicInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MediatorCopyWith<_$_Mediator> get copyWith =>
      __$$_MediatorCopyWithImpl<_$_Mediator>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MediatorToJson(
      this,
    );
  }
}

abstract class _Mediator implements Mediator {
  const factory _Mediator(
      {@HiveField(0, defaultValue: 0)
      @JsonKey(name: 'mediator_ID')
          final int mediatorId,
      @HiveField(1, defaultValue: 0)
      @JsonKey(name: 'class_ID')
          final int classID,
      @HiveField(2, defaultValue: '')
      @JsonKey(name: 'course_Name')
          final String courseName,
      @HiveField(3, defaultValue: 0)
      @JsonKey(name: 'teacher_ID')
          final int teacherID,
      @HiveField(4)
      @JsonKey(name: 'basic_Info')
          final BasicInfoModel? basicInfo}) = _$_Mediator;

  factory _Mediator.fromJson(Map<String, dynamic> json) = _$_Mediator.fromJson;

  @override
  @HiveField(0, defaultValue: 0)
  @JsonKey(name: 'mediator_ID')
  int get mediatorId;
  @override
  @HiveField(1, defaultValue: 0)
  @JsonKey(name: 'class_ID')
  int get classID;
  @override
  @HiveField(2, defaultValue: '')
  @JsonKey(name: 'course_Name')
  String get courseName;
  @override
  @HiveField(3, defaultValue: 0)
  @JsonKey(name: 'teacher_ID')
  int get teacherID;
  @override
  @HiveField(4)
  @JsonKey(name: 'basic_Info')
  BasicInfoModel? get basicInfo;
  @override
  @JsonKey(ignore: true)
  _$$_MediatorCopyWith<_$_Mediator> get copyWith =>
      throw _privateConstructorUsedError;
}
