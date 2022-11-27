import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'course_model.g.dart';

@HiveType(typeId: 6)
@JsonSerializable()
class CourseModel {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int courseId;
  @HiveField(2)
  final int schoolId;

  CourseModel({
    required this.name,
    required this.courseId,
    required this.schoolId,
  });

  factory CourseModel.fromJson(Map<String, dynamic> json) =>
      _$CourseModelFromJson(json);

  Map<String, dynamic> toJson() => _$CourseModelToJson(this);
}
