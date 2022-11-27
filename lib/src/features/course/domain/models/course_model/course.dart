// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Course with _$Course {
  ///adsasd
  @HiveType(typeId: 8)
  factory Course({
    // account email
    @HiveField(0) String? name,

    // account password
    @HiveField(1) int? courseId,

    // nike name
    @HiveField(2) int? schoolId,

  }) = _Course;
  ///das
  factory Course.fromJson(Map<String, Object?> json) => _$CourseFromJson(json);
}
