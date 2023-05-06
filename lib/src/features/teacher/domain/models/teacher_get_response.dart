import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';

part 'teacher_get_response.g.dart';

@HiveType(typeId: 33)
@JsonSerializable()
class TeacherGetResponse {
  @HiveField(0)
  @JsonKey(name: 'Teachers')
  final List<Teacher> teachers;

  TeacherGetResponse({required this.teachers});

  factory TeacherGetResponse.fromJson(Map<String, dynamic> json) =>
      _$TeacherGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherGetResponseToJson(this);
}
