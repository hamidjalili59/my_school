// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'exam_model.freezed.dart';
part 'exam_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
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
    @HiveField(0) int? examId,
    //
    @HiveField(1) int? teacherId,
    // basic Information
    @HiveField(2) bool? isDone,
    // basic Information
    @HiveField(3) String? examDescription,
    // basic Information
    @HiveField(4) String? teacherName,
  }) = _Exam;

  ///das
  factory Exam.fromJson(Map<String, Object?> json) => _$ExamFromJson(json);
}
