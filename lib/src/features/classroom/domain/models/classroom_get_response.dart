import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/classroom/domain/models/classroom_model.dart';

part 'classroom_get_response.g.dart';

@HiveType(typeId: 3)
@JsonSerializable()
class ClassroomGetResponse {
  @HiveField(0)
  @JsonKey(name: 'Classes')
  final List<Classroom> classrooms;

  ClassroomGetResponse({required this.classrooms});

  factory ClassroomGetResponse.fromJson(Map<String, dynamic> json) =>
      _$ClassroomGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ClassroomGetResponseToJson(this);
}
