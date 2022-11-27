import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'student_model/student.dart';

part 'student_get_response.g.dart';

@HiveType(typeId: 12)
@JsonSerializable()
class StudentGetResponse {
  @HiveField(0)
  final List<Student> students;

  StudentGetResponse({required this.students});
  
  factory StudentGetResponse.fromJson(Map<String,dynamic>json) => _$StudentGetResponseFromJson(json);

  Map<String, dynamic> toJson()=> _$StudentGetResponseToJson(this);
}
