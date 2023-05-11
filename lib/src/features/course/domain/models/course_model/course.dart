// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'course.freezed.dart';
part 'course.g.dart';

@HiveType(typeId: 12)
@Freezed(
  copyWith: true,
  equal: true,
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class Course with _$Course {
  const factory Course({
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'course_ID')
    @Default(0)
        int courseId,
    @HiveField(1, defaultValue: '')
    @JsonKey(name: 'course_Name')
    @Default('')
        String courseName,
    @HiveField(2, defaultValue: 0)
    @JsonKey(name: 'school_ID')
    @Default(0)
        int schoolID,
  }) = _Course;
  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);
}
