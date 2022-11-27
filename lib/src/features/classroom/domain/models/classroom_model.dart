// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Classroom with _$Classroom {
  ///adsasd
  @HiveType(typeId: 8)
  factory Classroom({
    // account email
    @HiveField(0) int? classID,

    // account password
    @HiveField(1) int? schoolId,

    // nike name
    @HiveField(2) String? className,
  }) = _Classroom;

  ///das
  factory Classroom.fromJson(Map<String, Object?> json) =>
      _$ClassroomFromJson(json);
}
