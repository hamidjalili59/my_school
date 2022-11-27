// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'classroom_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Classroom _$ClassroomFromJson(Map<String, dynamic> json) {
  return _Classroom.fromJson(json);
}

/// @nodoc
mixin _$Classroom {
// account email
  @HiveField(0)
  int? get classID => throw _privateConstructorUsedError; // account password
  @HiveField(1)
  int? get schoolId => throw _privateConstructorUsedError; // nike name
  @HiveField(2)
  String? get className => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassroomCopyWith<Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomCopyWith<$Res> {
  factory $ClassroomCopyWith(Classroom value, $Res Function(Classroom) then) =
      _$ClassroomCopyWithImpl<$Res, Classroom>;
  @useResult
  $Res call(
      {@HiveField(0) int? classID,
      @HiveField(1) int? schoolId,
      @HiveField(2) String? className});
}

/// @nodoc
class _$ClassroomCopyWithImpl<$Res, $Val extends Classroom>
    implements $ClassroomCopyWith<$Res> {
  _$ClassroomCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classID = freezed,
    Object? schoolId = freezed,
    Object? className = freezed,
  }) {
    return _then(_value.copyWith(
      classID: freezed == classID
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClassroomCopyWith<$Res> implements $ClassroomCopyWith<$Res> {
  factory _$$_ClassroomCopyWith(
          _$_Classroom value, $Res Function(_$_Classroom) then) =
      __$$_ClassroomCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? classID,
      @HiveField(1) int? schoolId,
      @HiveField(2) String? className});
}

/// @nodoc
class __$$_ClassroomCopyWithImpl<$Res>
    extends _$ClassroomCopyWithImpl<$Res, _$_Classroom>
    implements _$$_ClassroomCopyWith<$Res> {
  __$$_ClassroomCopyWithImpl(
      _$_Classroom _value, $Res Function(_$_Classroom) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classID = freezed,
    Object? schoolId = freezed,
    Object? className = freezed,
  }) {
    return _then(_$_Classroom(
      classID: freezed == classID
          ? _value.classID
          : classID // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      className: freezed == className
          ? _value.className
          : className // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 8)
class _$_Classroom implements _Classroom {
  _$_Classroom(
      {@HiveField(0) this.classID,
      @HiveField(1) this.schoolId,
      @HiveField(2) this.className});

  factory _$_Classroom.fromJson(Map<String, dynamic> json) =>
      _$$_ClassroomFromJson(json);

// account email
  @override
  @HiveField(0)
  final int? classID;
// account password
  @override
  @HiveField(1)
  final int? schoolId;
// nike name
  @override
  @HiveField(2)
  final String? className;

  @override
  String toString() {
    return 'Classroom(classID: $classID, schoolId: $schoolId, className: $className)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Classroom &&
            (identical(other.classID, classID) || other.classID == classID) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.className, className) ||
                other.className == className));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, classID, schoolId, className);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClassroomCopyWith<_$_Classroom> get copyWith =>
      __$$_ClassroomCopyWithImpl<_$_Classroom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClassroomToJson(
      this,
    );
  }
}

abstract class _Classroom implements Classroom {
  factory _Classroom(
      {@HiveField(0) final int? classID,
      @HiveField(1) final int? schoolId,
      @HiveField(2) final String? className}) = _$_Classroom;

  factory _Classroom.fromJson(Map<String, dynamic> json) =
      _$_Classroom.fromJson;

  @override // account email
  @HiveField(0)
  int? get classID;
  @override // account password
  @HiveField(1)
  int? get schoolId;
  @override // nike name
  @HiveField(2)
  String? get className;
  @override
  @JsonKey(ignore: true)
  _$$_ClassroomCopyWith<_$_Classroom> get copyWith =>
      throw _privateConstructorUsedError;
}
