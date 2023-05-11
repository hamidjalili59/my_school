// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'exam_model.freezed.dart';
part 'exam_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
class Exam with _$Exam {
  ///adsasd
  @HiveType(typeId: 14)
  factory Exam({
    // account email
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'exam_ID')
    @Default(0)
        int examId,
    //
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'teacher_ID')
    @Default(0)
        int teacherId,
    // basic Information
    @HiveField(2, defaultValue: false)
    @JsonKey(name: 'done')
    @Default(false)
        bool isDone,
    // basic Information
    @HiveField(3, defaultValue: '')
    @JsonKey(name: 'exam_Describtion')
    @Default('')
        String examDescription,
    // basic Information
    @HiveField(4, defaultValue: '')
    @JsonKey(name: 'teacher_Name')
    @Default('')
        String teacherName,
    // basic Information
    @HiveField(5, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classId,
  }) = _Exam;

  ///das
  factory Exam.fromJson(Map<String, Object?> json) => _$ExamFromJson(json);
}
