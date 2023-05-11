import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'course_model/course.dart';

part 'course_get_response.g.dart';

@HiveType(typeId: 10)
@JsonSerializable()
class CourseGetResponse {
  @HiveField(0)
  @JsonKey(name: 'Courses')
  final List<Course> courses;

  CourseGetResponse({required this.courses});

  factory CourseGetResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CourseGetResponseToJson(this);
}
