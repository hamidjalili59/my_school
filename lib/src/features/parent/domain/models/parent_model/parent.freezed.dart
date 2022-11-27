// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'parent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Parent _$ParentFromJson(Map<String, dynamic> json) {
  return _Parent.fromJson(json);
}

/// @nodoc
mixin _$Parent {
// account email
  @HiveField(0)
  int? get parentId => throw _privateConstructorUsedError; // account password
  @HiveField(1)
  int? get schoolId => throw _privateConstructorUsedError; // basic Information
  @HiveField(2)
  BasicInfoModel? get basicInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCopyWith<Parent> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCopyWith<$Res> {
  factory $ParentCopyWith(Parent value, $Res Function(Parent) then) =
      _$ParentCopyWithImpl<$Res, Parent>;
  @useResult
  $Res call(
      {@HiveField(0) int? parentId,
      @HiveField(1) int? schoolId,
      @HiveField(2) BasicInfoModel? basicInfo});
}

/// @nodoc
class _$ParentCopyWithImpl<$Res, $Val extends Parent>
    implements $ParentCopyWith<$Res> {
  _$ParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = freezed,
    Object? schoolId = freezed,
    Object? basicInfo = freezed,
  }) {
    return _then(_value.copyWith(
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParentCopyWith<$Res> implements $ParentCopyWith<$Res> {
  factory _$$_ParentCopyWith(_$_Parent value, $Res Function(_$_Parent) then) =
      __$$_ParentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int? parentId,
      @HiveField(1) int? schoolId,
      @HiveField(2) BasicInfoModel? basicInfo});
}

/// @nodoc
class __$$_ParentCopyWithImpl<$Res>
    extends _$ParentCopyWithImpl<$Res, _$_Parent>
    implements _$$_ParentCopyWith<$Res> {
  __$$_ParentCopyWithImpl(_$_Parent _value, $Res Function(_$_Parent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parentId = freezed,
    Object? schoolId = freezed,
    Object? basicInfo = freezed,
  }) {
    return _then(_$_Parent(
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      basicInfo: freezed == basicInfo
          ? _value.basicInfo
          : basicInfo // ignore: cast_nullable_to_non_nullable
              as BasicInfoModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 12)
class _$_Parent implements _Parent {
  _$_Parent(
      {@HiveField(0) this.parentId,
      @HiveField(1) this.schoolId,
      @HiveField(2) this.basicInfo});

  factory _$_Parent.fromJson(Map<String, dynamic> json) =>
      _$$_ParentFromJson(json);

// account email
  @override
  @HiveField(0)
  final int? parentId;
// account password
  @override
  @HiveField(1)
  final int? schoolId;
// basic Information
  @override
  @HiveField(2)
  final BasicInfoModel? basicInfo;

  @override
  String toString() {
    return 'Parent(parentId: $parentId, schoolId: $schoolId, basicInfo: $basicInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Parent &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.basicInfo, basicInfo) ||
                other.basicInfo == basicInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parentId, schoolId, basicInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParentCopyWith<_$_Parent> get copyWith =>
      __$$_ParentCopyWithImpl<_$_Parent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParentToJson(
      this,
    );
  }
}

abstract class _Parent implements Parent {
  factory _Parent(
      {@HiveField(0) final int? parentId,
      @HiveField(1) final int? schoolId,
      @HiveField(2) final BasicInfoModel? basicInfo}) = _$_Parent;

  factory _Parent.fromJson(Map<String, dynamic> json) = _$_Parent.fromJson;

  @override // account email
  @HiveField(0)
  int? get parentId;
  @override // account password
  @HiveField(1)
  int? get schoolId;
  @override // basic Information
  @HiveField(2)
  BasicInfoModel? get basicInfo;
  @override
  @JsonKey(ignore: true)
  _$$_ParentCopyWith<_$_Parent> get copyWith =>
      throw _privateConstructorUsedError;
}
