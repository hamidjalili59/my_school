import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';

part 'classroom_success_response.g.dart';

@HiveType(typeId: 13)
@JsonSerializable()
class ClassroomSuccessResponse {
  @HiveField(0)
  final Classroom classroom;

  ClassroomSuccessResponse({required this.classroom});

  factory ClassroomSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassroomSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassroomSuccessResponseToJson(this);
}
