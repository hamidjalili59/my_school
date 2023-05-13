import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:my_school/src/features/mediator_tc/domain/models/mediator.dart';

part 'mediator_add_success_response.g.dart';

@HiveType(typeId: 38)
@JsonSerializable()
class MediatorAddSuccessResponse {
  @HiveField(0)
  @JsonKey(name: 'MediatorTC')
  final Mediator mediator;

  MediatorAddSuccessResponse({required this.mediator});

  factory MediatorAddSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$MediatorAddSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediatorAddSuccessResponseToJson(this);
}
