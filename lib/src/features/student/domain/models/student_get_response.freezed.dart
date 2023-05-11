// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'student_get_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentGetResponse _$StudentGetResponseFromJson(Map<String, dynamic> json) {
  return _StudentGetResponse.fromJson(json);
}

/// @nodoc
mixin _$StudentGetResponse {
  @HiveField(0, defaultValue: [])
  @JsonKey(name: 'Students')
  List<Student> get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentGetResponseCopyWith<StudentGetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentGetResponseCopyWith<$Res> {
  factory $StudentGetResponseCopyWith(
          StudentGetResponse value, $Res Function(StudentGetResponse) then) =
      _$StudentGetResponseCopyWithImpl<$Res, StudentGetResponse>;
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: [])
      @JsonKey(name: 'Students')
          List<Student> students});
}

/// @nodoc
class _$StudentGetResponseCopyWithImpl<$Res, $Val extends StudentGetResponse>
    implements $StudentGetResponseCopyWith<$Res> {
  _$StudentGetResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudentGetResponseCopyWith<$Res>
    implements $StudentGetResponseCopyWith<$Res> {
  factory _$$_StudentGetResponseCopyWith(_$_StudentGetResponse value,
          $Res Function(_$_StudentGetResponse) then) =
      __$$_StudentGetResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0, defaultValue: [])
      @JsonKey(name: 'Students')
          List<Student> students});
}

/// @nodoc
class __$$_StudentGetResponseCopyWithImpl<$Res>
    extends _$StudentGetResponseCopyWithImpl<$Res, _$_StudentGetResponse>
    implements _$$_StudentGetResponseCopyWith<$Res> {
  __$$_StudentGetResponseCopyWithImpl(
      _$_StudentGetResponse _value, $Res Function(_$_StudentGetResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = null,
  }) {
    return _then(_$_StudentGetResponse(
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 29)
class _$_StudentGetResponse implements _StudentGetResponse {
  _$_StudentGetResponse(
      {@HiveField(0, defaultValue: [])
      @JsonKey(name: 'Students')
          this.students = const []});

  factory _$_StudentGetResponse.fromJson(Map<String, dynamic> json) =>
      _$$_StudentGetResponseFromJson(json);

  @override
  @HiveField(0, defaultValue: [])
  @JsonKey(name: 'Students')
  final List<Student> students;

  @override
  String toString() {
    return 'StudentGetResponse(students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudentGetResponse &&
            const DeepCollectionEquality().equals(other.students, students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudentGetResponseCopyWith<_$_StudentGetResponse> get copyWith =>
      __$$_StudentGetResponseCopyWithImpl<_$_StudentGetResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudentGetResponseToJson(
      this,
    );
  }
}

abstract class _StudentGetResponse implements StudentGetResponse {
  factory _StudentGetResponse(
      {@HiveField(0, defaultValue: [])
      @JsonKey(name: 'Students')
          final List<Student> students}) = _$_StudentGetResponse;

  factory _StudentGetResponse.fromJson(Map<String, dynamic> json) =
      _$_StudentGetResponse.fromJson;

  @override
  @HiveField(0, defaultValue: [])
  @JsonKey(name: 'Students')
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$_StudentGetResponseCopyWith<_$_StudentGetResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
