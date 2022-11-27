// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';

part 'score_model.freezed.dart';
part 'score_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
class Score with _$Score {
  ///adsasd
  @HiveType(typeId: 10)
  factory Score({
    // account email
    @HiveField(0) int? gradeId,
    //
    @HiveField(1) int? classId,
    // basic Information
    @HiveField(2) BasicInfoModel? studentInfo,
    // basic Information
    @HiveField(3) String? teacherName,
    // basic Information
    @HiveField(4) String? courseName,
    // basic Information
    @HiveField(4) double? grade,
    // basic Information
    @HiveField(4) DateTime? createdDate,

  }) = _Score;

  ///das
  factory Score.fromJson(Map<String, Object?> json) =>
      _$ScoreFromJson(json);
}
