import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/student/domain/models/student_model/student.dart';


part 'student_success_response.g.dart';

@HiveType(typeId: 13)
@JsonSerializable()
class StudentSuccessResponse {
  @HiveField(0)
  final Student student;

  StudentSuccessResponse({required this.student});

  factory StudentSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$StudentSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$StudentSuccessResponseToJson(this);
}
