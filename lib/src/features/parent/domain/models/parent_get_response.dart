import 'package:hive/hive.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

import 'parent_model/parent.dart';

part 'parent_get_response.g.dart';

@HiveType(typeId: 17)
@JsonSerializable()
class ParentGetResponse {
  @HiveField(0)
  final Parent parents;

  ParentGetResponse({required this.parents});

  factory ParentGetResponse.fromJson(Map<String, dynamic> json) =>
      _$ParentGetResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ParentGetResponseToJson(this);
}
