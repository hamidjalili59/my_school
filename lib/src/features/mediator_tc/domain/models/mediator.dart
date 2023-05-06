import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'mediator.freezed.dart';
part 'mediator.g.dart';

@HiveType(typeId: 36)
@Freezed(
  copyWith: true,
  equal: true,
  fromJson: true,
  toJson: true,
  makeCollectionsUnmodifiable: false,
)
class Mediator with _$Mediator {
  const factory Mediator({
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'mediator_ID')
    @Default(0)
        int mediatorId,
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classID,
    @HiveField(2, defaultValue: '')
    @JsonKey(name: 'course_Name')
    @Default('')
        String courseName,
    @HiveField(3, defaultValue: 0)
    @JsonKey(name: 'teacher_ID')
    @Default(0)
        int teacherID,
    @HiveField(4) @JsonKey(name: 'basic_Info') BasicInfoModel? basicInfo,
  }) = _Mediator;

  factory Mediator.fromJson(Map<String, dynamic> json) =>
      _$MediatorFromJson(json);
}
