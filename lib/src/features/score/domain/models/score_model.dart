import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

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
  @HiveType(typeId: 26)
  factory Score({
    // account email
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'grade_ID')
    @Default(0)
        int gradeId,
    //
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classId,
    // basic Information
    @HiveField(2, defaultValue: '')
    @JsonKey(name: 'teacher_Name')
    @Default('')
        String teacherName,
    // basic Information
    @HiveField(3, defaultValue: '')
    @JsonKey(name: 'course_Name')
    @Default('')
        String courseName,
    // basic Information
    @HiveField(4, defaultValue: 0.0)
    @JsonKey(name: 'grade')
    @Default(0.0)
        double grade,
    // basic Information
    @HiveField(5, defaultValue: 0)
    @JsonKey(name: 'student_ID')
    @Default(0)
        int studentId,
    @HiveField(6) @JsonKey(name: 'created_Date') DateTime? createdDate,
  }) = _Score;

  ///das
  factory Score.fromJson(Map<String, Object?> json) => _$ScoreFromJson(json);
}
