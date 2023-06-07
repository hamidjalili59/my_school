import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'teacher_get_schools.g.dart';

@HiveType(typeId: 34)
@JsonSerializable()
class TeacherGetSchools {
  @HiveField(0)
  final int teacherId;
  @HiveField(1)
  final int schoolId;

  TeacherGetSchools(this.teacherId, this.schoolId);

  factory TeacherGetSchools.fromJson(Map<String, dynamic> json) =>
      _$TeacherGetSchoolsFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherGetSchoolsToJson(this);
}
