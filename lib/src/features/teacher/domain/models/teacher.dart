// ignore: depend_on_referenced_packages
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'teacher.g.dart';

@HiveType(typeId: 14)
@JsonSerializable()
class Teacher {
  @HiveField(0)
  @JsonKey(name: 'teacher_ID')
  final int teacherId;
  @HiveField(1)
  @JsonKey(name: 'basic_Info')
  final BasicInfoModel basicInfo;

  Teacher(this.teacherId, this.basicInfo);

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherToJson(this);
}
