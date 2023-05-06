// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'student.freezed.dart';
part 'student.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Student with _$Student {
  ///adsasd
  @HiveType(typeId: 31)
  factory Student({
    // account email
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'student_ID')
    @Default(0)
        int studentId,

    // account password
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classId,

    // basic Information
    @HiveField(2) @JsonKey(name: 'basic_Info') BasicInfoModel? basicInfo,
  }) = _Student;

  ///das
  factory Student.fromJson(Map<String, Object?> json) =>
      _$StudentFromJson(json);
}
