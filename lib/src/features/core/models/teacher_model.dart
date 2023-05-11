import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';

part 'teacher_model.g.dart';

@HiveType(typeId: 9)
@JsonSerializable()
class TeacherModel {
  @HiveField(0)
  final BasicInfoModel basicInfo;
  @HiveField(1)
  final int teacherId;

  TeacherModel({
    required this.basicInfo,
    required this.teacherId,
  });

  factory TeacherModel.fromJson(Map<String, dynamic> json) =>
      _$TeacherModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);
}
