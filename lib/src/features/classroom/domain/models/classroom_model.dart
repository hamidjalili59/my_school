import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'classroom_model.freezed.dart';
part 'classroom_model.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)

/// asd
class Classroom with _$Classroom {
  ///adsasd
  @HiveType(typeId: 4)
  factory Classroom({
    // account email
    @HiveField(0, defaultValue: 0)
    @JsonKey(name: 'class_ID')
    @Default(0)
        int classID,
    // account email
    @HiveField(1, defaultValue: 0)
    @JsonKey(name: 'school_ID')
    @Default(0)
        int schoolId,
    // account email
    @HiveField(2, defaultValue: 'مدرسه من')
    @JsonKey(name: 'class_Name')
    @Default('مدرسه من')
        String className,
  }) = _Classroom;

  ///das
  factory Classroom.fromJson(Map<String, Object?> json) =>
      _$ClassroomFromJson(json);
}

//_________________
// part 'classroom_model.g.dart';

// @HiveType(typeId: 4)
// @JsonSerializable()
// class Classroom {
//   @HiveField(0)
//   @JsonKey(name: 'class_ID')
//   final int? classID;
//   @HiveField(1)
//   @JsonKey(name: 'school_ID')
//   final int? schoolId;
//   @HiveField(2)
//   @JsonKey(name: 'class_Name')
//   final String? className;

//   Classroom(this.classID, this.schoolId, this.className);

//   factory Classroom.fromJson(Map<String, dynamic> json) =>
//       _$ClassroomFromJson(json);

//   Map<String, dynamic> toJson() => _$ClassroomToJson(this);
// }
