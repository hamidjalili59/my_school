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
  @HiveType(typeId: 10)
  factory Rollcall({
    // account email
    @HiveField(0) int? rolecallId,
    //
    @HiveField(1) int? studentId,
    // basic Information
    @HiveField(2) String? classId,
    // basic Information
    @HiveField(3) int? classTime,
    // basic Information
    @HiveField(4) bool? absent,
    // basic Information
    @HiveField(5) String? date,

  }) = _Rollcall;

  ///das
  factory Rollcall.fromJson(Map<String, Object?> json) =>
      _$RollcallFromJson(json);
}
