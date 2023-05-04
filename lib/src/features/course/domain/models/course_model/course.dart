// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'course.g.dart';

@HiveType(typeId: 8)
@JsonSerializable()
class Course {
  // account email
  @HiveField(0)
  @JsonKey(name: 'course_Name')
  final String? name;

  // account password
  @HiveField(1)
  @JsonKey(name: 'course_ID')
  final int? courseId;

  // nike name
  @HiveField(2)
  @JsonKey(name: 'school_ID')
  final int? schoolId;

  Course(
    this.name,
    this.courseId,
    this.schoolId,
  );

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseToJson(this);
}
