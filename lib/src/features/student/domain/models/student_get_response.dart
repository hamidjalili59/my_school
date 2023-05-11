import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import 'student_model/student.dart';

part 'student_get_response.freezed.dart';
part 'student_get_response.g.dart';

@Freezed(
  makeCollectionsUnmodifiable: false,
  copyWith: true,
  toJson: true,
  fromJson: true,
  equal: true,
)
class StudentGetResponse with _$StudentGetResponse {
  ///adsasd
  @HiveType(typeId: 29)
  factory StudentGetResponse({
    @HiveField(0, defaultValue: [])
    @JsonKey(name: 'Students')
    @Default([])
        List<Student> students,
  }) = _StudentGetResponse;

  ///das
  factory StudentGetResponse.fromJson(Map<String, Object?> json) =>
      _$StudentGetResponseFromJson(json);
}
