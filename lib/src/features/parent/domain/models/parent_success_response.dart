import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/parent/domain/models/parent_model/parent.dart';

part 'parent_success_response.g.dart';

@HiveType(typeId: 18)
@JsonSerializable()
class ParentSuccessResponse {
  @HiveField(0)
  final Parent parent;

  ParentSuccessResponse({required this.parent});

  factory ParentSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ParentSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ParentSuccessResponseToJson(this);
}
