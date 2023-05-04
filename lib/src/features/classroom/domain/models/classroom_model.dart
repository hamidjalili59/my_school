// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'classroom_model.g.dart';

@HiveType(typeId: 8)
@JsonSerializable()
class Classroom {
  @HiveField(0)
  @JsonKey(name: 'class_ID')
  final int? classID;
  @HiveField(1)
  @JsonKey(name: 'school_ID')
  final int? schoolId;
  @HiveField(2)
  @JsonKey(name: 'class_Name')
  final String? className;

  Classroom(this.classID, this.schoolId, this.className);

  factory Classroom.fromJson(Map<String, dynamic> json) =>
      _$ClassroomFromJson(json);

  Map<String, dynamic> toJson() => _$ClassroomToJson(this);
}
