// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'teacher.freezed.dart';
part 'teacher.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Teacher with _$Teacher {
  ///adsasd
  @HiveType(typeId: 14)
  factory Teacher({
    // account email
    @HiveField(0) int? teacherId,

    // basic Information
    @HiveField(1) BasicInfoModel? basicInfo,
  }) = _Teacher;

  ///das
  factory Teacher.fromJson(Map<String, Object?> json) =>
      _$TeacherFromJson(json);
}
