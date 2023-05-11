import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';

part 'mediator_success_response.g.dart';

@HiveType(typeId: 37)
@JsonSerializable()
class MediatorSuccessResponse {
  @HiveField(0)
  @JsonKey(name: 'MediatorTC')
  final List<Mediator> mediators;

  MediatorSuccessResponse({required this.mediators});

  factory MediatorSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$MediatorSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediatorSuccessResponseToJson(this);
}
