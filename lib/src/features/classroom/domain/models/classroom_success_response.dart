import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';

part 'classroom_success_response.g.dart';

@HiveType(typeId: 5)
@JsonSerializable()
class ClassroomSuccessResponse {
  @HiveField(0)
  @JsonKey(name: "Class")
  final Classroom classroom;

  ClassroomSuccessResponse({required this.classroom});

  factory ClassroomSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassroomSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassroomSuccessResponseToJson(this);
}
