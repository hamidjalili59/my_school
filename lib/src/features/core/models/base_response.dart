import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'base_response.g.dart';

@HiveType(typeId: 4)
@JsonSerializable()
class BaseResponse {
  @HiveField(0)
  @JsonKey(name: 'payLoad')
  final Map<String, dynamic> payload;
  @HiveField(1)
  final String message;
  @HiveField(2)
  @JsonKey(name: 'code')
  final int statusCode;

  BaseResponse({
    required this.payload,
    required this.message,
    required this.statusCode,
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BaseResponseToJson(this);
}
