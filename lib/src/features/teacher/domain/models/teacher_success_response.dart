import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/teacher/domain/models/teacher.dart';

part 'teacher_success_response.g.dart';

@HiveType(typeId: 13)
@JsonSerializable()
class TeacherSuccessResponse {
  @HiveField(0)
  @JsonKey(name: 'Teachers')
  final Teacher teacher;

  TeacherSuccessResponse({required this.teacher});

  factory TeacherSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$TeacherSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherSuccessResponseToJson(this);
}
