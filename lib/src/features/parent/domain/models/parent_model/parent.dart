// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_school/src/features/core/models/basic_info_model.dart';
import 'package:hive/hive.dart';

part 'parent.freezed.dart';
part 'parent.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: true,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Parent with _$Parent {
  ///adsasd
  @HiveType(typeId: 12)
  factory Parent({
    // account email
    @HiveField(0) int? parentId,

    // account password
    @HiveField(1) int? schoolId,

    // basic Information
    @HiveField(2) BasicInfoModel? basicInfo,

  }) = _Parent;
  ///das
  factory Parent.fromJson(Map<String, Object?> json) => _$ParentFromJson(json);
}
