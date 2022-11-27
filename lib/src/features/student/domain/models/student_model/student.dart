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
  @HiveType(typeId: 12)
  factory Student({
    // account email
    @HiveField(0) int? studentId,

    // account password
    @HiveField(1) int? classId,

    // basic Information
    @HiveField(2) BasicInfoModel? basicInfo,

  }) = _Student;
  ///das
  factory Student.fromJson(Map<String, Object?> json) => _$StudentFromJson(json);
}
