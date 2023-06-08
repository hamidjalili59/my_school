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
  @HiveField(2)
  final String schoolName;

  TeacherGetSchools(this.teacherId, this.schoolId, this.schoolName);

  factory TeacherGetSchools.fromJson(Map<String, dynamic> json) =>
      _$TeacherGetSchoolsFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherGetSchoolsToJson(this);
}
