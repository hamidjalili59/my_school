import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/role_call/domain/models/rollcall_model.dart';

part 'rollcall_get_response.g.dart';

@HiveType(typeId: 21)
@JsonSerializable()
class RollcallGetResponse {
  @HiveField(0)
  final List<Rollcall> rollcalls;

  RollcallGetResponse({required this.rollcalls});

  factory RollcallGetResponse.fromJson(Map<String, dynamic> json) =>
      _$RollcallGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$RollcallGetResponseToJson(this);
}
