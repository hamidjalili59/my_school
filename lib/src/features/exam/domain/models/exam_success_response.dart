import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';

part 'exam_success_response.g.dart';

@HiveType(typeId: 16)
@JsonSerializable()
class ExamSuccessResponse {
  @HiveField(0)
  @JsonKey(name: 'Exam')
  final Exam exam;

  ExamSuccessResponse({required this.exam});

  factory ExamSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ExamSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ExamSuccessResponseToJson(this);
}
