import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'course_model/course.dart';

part 'course_success_response.g.dart';

@HiveType(typeId: 13)
@JsonSerializable()
class CourseSuccessResponse {
  @HiveField(0)
  final Course course;

  CourseSuccessResponse({required this.course});
  
  factory CourseSuccessResponse.fromJson(Map<String,dynamic>json) => _$CourseSuccessResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$CourseSuccessResponseToJson(this);
}
