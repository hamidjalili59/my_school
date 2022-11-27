import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/exam/domain/models/exam_model.dart';

part 'exam_get_response.g.dart';

@HiveType(typeId: 12)
@JsonSerializable()
class ExamGetResponse {
  @HiveField(0)
  final List<Exam> exams;

  ExamGetResponse({required this.exams});
  
  factory ExamGetResponse.fromJson(Map<String,dynamic>json) => _$ExamGetResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$ExamGetResponseToJson(this);
}
