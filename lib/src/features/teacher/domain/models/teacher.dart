import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'teacher.freezed.dart';
part 'teacher.g.dart';

@HiveType(typeId: 35)
@Freezed(
  copyWith: true,
  equal: true,
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class Teacher with _$Teacher {
  const factory Teacher({
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'teacher_ID')
    @Default(0)
        int teacherId,
    @HiveField(1) @JsonKey(name: 'basic_Info') BasicInfoModel? basicInfo,
  }) = _Teacher;

  factory Teacher.fromJson(Map<String, dynamic> json) =>
      _$TeacherFromJson(json);
}
