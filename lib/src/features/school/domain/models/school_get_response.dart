import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

part 'school_get_response.g.dart';

@HiveType(typeId: 19)
@JsonSerializable()
class SchoolGetResponse {
  @HiveField(0)
  final Map<String, dynamic> classe;

  SchoolGetResponse({required this.classe});

  factory SchoolGetResponse.fromJson(Map<String, dynamic> json) =>
      _$SchoolGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SchoolGetResponseToJson(this);
}
