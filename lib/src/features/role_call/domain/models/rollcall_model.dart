// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'rollcall_model.freezed.dart';
part 'rollcall_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  fromJson: true,
  toJson: true,
  equal: true,
)

/// asd
class Rollcall with _$Rollcall {
  ///adsasd
  @HiveType(typeId: 22)
  factory Rollcall({
    // account email
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'rollCall_ID')
    @Default(0)
        int rolecallId,
    //
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'student_ID')
    @Default(0)
        int studentId,
    // basic Information
    @HiveField(2, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classId,
    // basic Information
    @HiveField(3, defaultValue: 0)
    @JsonKey(name: 'class_Time')
    @Default(0)
        int classTime,
    // basic Information
    @HiveField(4, defaultValue: false)
    @JsonKey(name: 'absent')
    @Default(false)
        bool absent,
    // basic Information
    @HiveField(5, defaultValue: '')
    @JsonKey(name: 'date')
    @Default('')
        String date,
  }) = _Rollcall;

  ///das
  factory Rollcall.fromJson(Map<String, Object?> json) =>
      _$RollcallFromJson(json);
}
