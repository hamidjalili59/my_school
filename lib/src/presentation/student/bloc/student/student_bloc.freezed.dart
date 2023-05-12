// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudentState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Student> get students => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Student> students) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Student> students)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Student> students)? idle,
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
  $StudentStateCopyWith<StudentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentStateCopyWith<$Res> {
  factory $StudentStateCopyWith(
          StudentState value, $Res Function(StudentState) then) =
      _$StudentStateCopyWithImpl<$Res, StudentState>;
  @useResult
  $Res call({bool isLoading, List<Student> students});
}

/// @nodoc
class _$StudentStateCopyWithImpl<$Res, $Val extends StudentState>
    implements $StudentStateCopyWith<$Res> {
  _$StudentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? students = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      students: null == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IdleCopyWith<$Res> implements $StudentStateCopyWith<$Res> {
  factory _$$_IdleCopyWith(_$_Idle value, $Res Function(_$_Idle) then) =
      __$$_IdleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<Student> students});
}

/// @nodoc
class __$$_IdleCopyWithImpl<$Res>
    extends _$StudentStateCopyWithImpl<$Res, _$_Idle>
    implements _$$_IdleCopyWith<$Res> {
  __$$_IdleCopyWithImpl(_$_Idle _value, $Res Function(_$_Idle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? students = null,
  }) {
    return _then(_$_Idle(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      students: null == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<Student>,
    ));
  }
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle(
      {this.isLoading = false, final List<Student> students = const []})
      : _students = students;

  @override
  @JsonKey()
  final bool isLoading;
  final List<Student> _students;
  @override
  @JsonKey()
  List<Student> get students {
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_students);
  }

  @override
  String toString() {
    return 'StudentState.idle(isLoading: $isLoading, students: $students)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Idle &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdleCopyWith<_$_Idle> get copyWith =>
      __$$_IdleCopyWithImpl<_$_Idle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Student> students) idle,
  }) {
    return idle(isLoading, students);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, List<Student> students)? idle,
  }) {
    return idle?.call(isLoading, students);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Student> students)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(isLoading, students);
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

abstract class _Idle implements StudentState {
  const factory _Idle({final bool isLoading, final List<Student> students}) =
      _$_Idle;

  @override
  bool get isLoading;
  @override
  List<Student> get students;
  @override
  @JsonKey(ignore: true)
  _$$_IdleCopyWith<_$_Idle> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StudentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int classId) getStudents,
    required TResult Function(double phoneNumber) getStudentsParent,
    required TResult Function(Student student) updateStudent,
    required TResult Function(Student student, String parentName) addStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int classId)? getStudents,
    TResult? Function(double phoneNumber)? getStudentsParent,
    TResult? Function(Student student)? updateStudent,
    TResult? Function(Student student, String parentName)? addStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int classId)? getStudents,
    TResult Function(double phoneNumber)? getStudentsParent,
    TResult Function(Student student)? updateStudent,
    TResult Function(Student student, String parentName)? addStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_GetStudentsParent value) getStudentsParent,
    required TResult Function(_UpdateStudent value) updateStudent,
    required TResult Function(_AddStudent value) addStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_GetStudentsParent value)? getStudentsParent,
    TResult? Function(_UpdateStudent value)? updateStudent,
    TResult? Function(_AddStudent value)? addStudent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_GetStudentsParent value)? getStudentsParent,
    TResult Function(_UpdateStudent value)? updateStudent,
    TResult Function(_AddStudent value)? addStudent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentEventCopyWith<$Res> {
  factory $StudentEventCopyWith(
          StudentEvent value, $Res Function(StudentEvent) then) =
      _$StudentEventCopyWithImpl<$Res, StudentEvent>;
}

/// @nodoc
class _$StudentEventCopyWithImpl<$Res, $Val extends StudentEvent>
    implements $StudentEventCopyWith<$Res> {
  _$StudentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetStudentsCopyWith<$Res> {
  factory _$$_GetStudentsCopyWith(
          _$_GetStudents value, $Res Function(_$_GetStudents) then) =
      __$$_GetStudentsCopyWithImpl<$Res>;
  @useResult
  $Res call({int classId});
}

/// @nodoc
class __$$_GetStudentsCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$_GetStudents>
    implements _$$_GetStudentsCopyWith<$Res> {
  __$$_GetStudentsCopyWithImpl(
      _$_GetStudents _value, $Res Function(_$_GetStudents) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classId = null,
  }) {
    return _then(_$_GetStudents(
      null == classId
          ? _value.classId
          : classId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetStudents implements _GetStudents {
  const _$_GetStudents(this.classId);

  @override
  final int classId;

  @override
  String toString() {
    return 'StudentEvent.getStudents(classId: $classId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStudents &&
            (identical(other.classId, classId) || other.classId == classId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, classId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStudentsCopyWith<_$_GetStudents> get copyWith =>
      __$$_GetStudentsCopyWithImpl<_$_GetStudents>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int classId) getStudents,
    required TResult Function(double phoneNumber) getStudentsParent,
    required TResult Function(Student student) updateStudent,
    required TResult Function(Student student, String parentName) addStudent,
  }) {
    return getStudents(classId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int classId)? getStudents,
    TResult? Function(double phoneNumber)? getStudentsParent,
    TResult? Function(Student student)? updateStudent,
    TResult? Function(Student student, String parentName)? addStudent,
  }) {
    return getStudents?.call(classId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int classId)? getStudents,
    TResult Function(double phoneNumber)? getStudentsParent,
    TResult Function(Student student)? updateStudent,
    TResult Function(Student student, String parentName)? addStudent,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents(classId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_GetStudentsParent value) getStudentsParent,
    required TResult Function(_UpdateStudent value) updateStudent,
    required TResult Function(_AddStudent value) addStudent,
  }) {
    return getStudents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_GetStudentsParent value)? getStudentsParent,
    TResult? Function(_UpdateStudent value)? updateStudent,
    TResult? Function(_AddStudent value)? addStudent,
  }) {
    return getStudents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_GetStudentsParent value)? getStudentsParent,
    TResult Function(_UpdateStudent value)? updateStudent,
    TResult Function(_AddStudent value)? addStudent,
    required TResult orElse(),
  }) {
    if (getStudents != null) {
      return getStudents(this);
    }
    return orElse();
  }
}

abstract class _GetStudents implements StudentEvent {
  const factory _GetStudents(final int classId) = _$_GetStudents;

  int get classId;
  @JsonKey(ignore: true)
  _$$_GetStudentsCopyWith<_$_GetStudents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetStudentsParentCopyWith<$Res> {
  factory _$$_GetStudentsParentCopyWith(_$_GetStudentsParent value,
          $Res Function(_$_GetStudentsParent) then) =
      __$$_GetStudentsParentCopyWithImpl<$Res>;
  @useResult
  $Res call({double phoneNumber});
}

/// @nodoc
class __$$_GetStudentsParentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$_GetStudentsParent>
    implements _$$_GetStudentsParentCopyWith<$Res> {
  __$$_GetStudentsParentCopyWithImpl(
      _$_GetStudentsParent _value, $Res Function(_$_GetStudentsParent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$_GetStudentsParent(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GetStudentsParent implements _GetStudentsParent {
  const _$_GetStudentsParent(this.phoneNumber);

  @override
  final double phoneNumber;

  @override
  String toString() {
    return 'StudentEvent.getStudentsParent(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStudentsParent &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStudentsParentCopyWith<_$_GetStudentsParent> get copyWith =>
      __$$_GetStudentsParentCopyWithImpl<_$_GetStudentsParent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int classId) getStudents,
    required TResult Function(double phoneNumber) getStudentsParent,
    required TResult Function(Student student) updateStudent,
    required TResult Function(Student student, String parentName) addStudent,
  }) {
    return getStudentsParent(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int classId)? getStudents,
    TResult? Function(double phoneNumber)? getStudentsParent,
    TResult? Function(Student student)? updateStudent,
    TResult? Function(Student student, String parentName)? addStudent,
  }) {
    return getStudentsParent?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int classId)? getStudents,
    TResult Function(double phoneNumber)? getStudentsParent,
    TResult Function(Student student)? updateStudent,
    TResult Function(Student student, String parentName)? addStudent,
    required TResult orElse(),
  }) {
    if (getStudentsParent != null) {
      return getStudentsParent(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_GetStudentsParent value) getStudentsParent,
    required TResult Function(_UpdateStudent value) updateStudent,
    required TResult Function(_AddStudent value) addStudent,
  }) {
    return getStudentsParent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_GetStudentsParent value)? getStudentsParent,
    TResult? Function(_UpdateStudent value)? updateStudent,
    TResult? Function(_AddStudent value)? addStudent,
  }) {
    return getStudentsParent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_GetStudentsParent value)? getStudentsParent,
    TResult Function(_UpdateStudent value)? updateStudent,
    TResult Function(_AddStudent value)? addStudent,
    required TResult orElse(),
  }) {
    if (getStudentsParent != null) {
      return getStudentsParent(this);
    }
    return orElse();
  }
}

abstract class _GetStudentsParent implements StudentEvent {
  const factory _GetStudentsParent(final double phoneNumber) =
      _$_GetStudentsParent;

  double get phoneNumber;
  @JsonKey(ignore: true)
  _$$_GetStudentsParentCopyWith<_$_GetStudentsParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateStudentCopyWith<$Res> {
  factory _$$_UpdateStudentCopyWith(
          _$_UpdateStudent value, $Res Function(_$_UpdateStudent) then) =
      __$$_UpdateStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({Student student});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$_UpdateStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$_UpdateStudent>
    implements _$$_UpdateStudentCopyWith<$Res> {
  __$$_UpdateStudentCopyWithImpl(
      _$_UpdateStudent _value, $Res Function(_$_UpdateStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
  }) {
    return _then(_$_UpdateStudent(
      null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc

class _$_UpdateStudent implements _UpdateStudent {
  const _$_UpdateStudent(this.student);

  @override
  final Student student;

  @override
  String toString() {
    return 'StudentEvent.updateStudent(student: $student)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateStudent &&
            (identical(other.student, student) || other.student == student));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateStudentCopyWith<_$_UpdateStudent> get copyWith =>
      __$$_UpdateStudentCopyWithImpl<_$_UpdateStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int classId) getStudents,
    required TResult Function(double phoneNumber) getStudentsParent,
    required TResult Function(Student student) updateStudent,
    required TResult Function(Student student, String parentName) addStudent,
  }) {
    return updateStudent(student);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int classId)? getStudents,
    TResult? Function(double phoneNumber)? getStudentsParent,
    TResult? Function(Student student)? updateStudent,
    TResult? Function(Student student, String parentName)? addStudent,
  }) {
    return updateStudent?.call(student);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int classId)? getStudents,
    TResult Function(double phoneNumber)? getStudentsParent,
    TResult Function(Student student)? updateStudent,
    TResult Function(Student student, String parentName)? addStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(student);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_GetStudentsParent value) getStudentsParent,
    required TResult Function(_UpdateStudent value) updateStudent,
    required TResult Function(_AddStudent value) addStudent,
  }) {
    return updateStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_GetStudentsParent value)? getStudentsParent,
    TResult? Function(_UpdateStudent value)? updateStudent,
    TResult? Function(_AddStudent value)? addStudent,
  }) {
    return updateStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_GetStudentsParent value)? getStudentsParent,
    TResult Function(_UpdateStudent value)? updateStudent,
    TResult Function(_AddStudent value)? addStudent,
    required TResult orElse(),
  }) {
    if (updateStudent != null) {
      return updateStudent(this);
    }
    return orElse();
  }
}

abstract class _UpdateStudent implements StudentEvent {
  const factory _UpdateStudent(final Student student) = _$_UpdateStudent;

  Student get student;
  @JsonKey(ignore: true)
  _$$_UpdateStudentCopyWith<_$_UpdateStudent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddStudentCopyWith<$Res> {
  factory _$$_AddStudentCopyWith(
          _$_AddStudent value, $Res Function(_$_AddStudent) then) =
      __$$_AddStudentCopyWithImpl<$Res>;
  @useResult
  $Res call({Student student, String parentName});

  $StudentCopyWith<$Res> get student;
}

/// @nodoc
class __$$_AddStudentCopyWithImpl<$Res>
    extends _$StudentEventCopyWithImpl<$Res, _$_AddStudent>
    implements _$$_AddStudentCopyWith<$Res> {
  __$$_AddStudentCopyWithImpl(
      _$_AddStudent _value, $Res Function(_$_AddStudent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? student = null,
    Object? parentName = null,
  }) {
    return _then(_$_AddStudent(
      null == student
          ? _value.student
          : student // ignore: cast_nullable_to_non_nullable
              as Student,
      null == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $StudentCopyWith<$Res> get student {
    return $StudentCopyWith<$Res>(_value.student, (value) {
      return _then(_value.copyWith(student: value));
    });
  }
}

/// @nodoc

class _$_AddStudent implements _AddStudent {
  const _$_AddStudent(this.student, this.parentName);

  @override
  final Student student;
  @override
  final String parentName;

  @override
  String toString() {
    return 'StudentEvent.addStudent(student: $student, parentName: $parentName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddStudent &&
            (identical(other.student, student) || other.student == student) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, student, parentName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddStudentCopyWith<_$_AddStudent> get copyWith =>
      __$$_AddStudentCopyWithImpl<_$_AddStudent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int classId) getStudents,
    required TResult Function(double phoneNumber) getStudentsParent,
    required TResult Function(Student student) updateStudent,
    required TResult Function(Student student, String parentName) addStudent,
  }) {
    return addStudent(student, parentName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int classId)? getStudents,
    TResult? Function(double phoneNumber)? getStudentsParent,
    TResult? Function(Student student)? updateStudent,
    TResult? Function(Student student, String parentName)? addStudent,
  }) {
    return addStudent?.call(student, parentName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int classId)? getStudents,
    TResult Function(double phoneNumber)? getStudentsParent,
    TResult Function(Student student)? updateStudent,
    TResult Function(Student student, String parentName)? addStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(student, parentName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetStudents value) getStudents,
    required TResult Function(_GetStudentsParent value) getStudentsParent,
    required TResult Function(_UpdateStudent value) updateStudent,
    required TResult Function(_AddStudent value) addStudent,
  }) {
    return addStudent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetStudents value)? getStudents,
    TResult? Function(_GetStudentsParent value)? getStudentsParent,
    TResult? Function(_UpdateStudent value)? updateStudent,
    TResult? Function(_AddStudent value)? addStudent,
  }) {
    return addStudent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetStudents value)? getStudents,
    TResult Function(_GetStudentsParent value)? getStudentsParent,
    TResult Function(_UpdateStudent value)? updateStudent,
    TResult Function(_AddStudent value)? addStudent,
    required TResult orElse(),
  }) {
    if (addStudent != null) {
      return addStudent(this);
    }
    return orElse();
  }
}

abstract class _AddStudent implements StudentEvent {
  const factory _AddStudent(final Student student, final String parentName) =
      _$_AddStudent;

  Student get student;
  String get parentName;
  @JsonKey(ignore: true)
  _$$_AddStudentCopyWith<_$_AddStudent> get copyWith =>
      throw _privateConstructorUsedError;
}
